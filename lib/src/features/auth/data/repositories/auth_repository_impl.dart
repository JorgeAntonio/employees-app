import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/datasources/api/auth_datasource_impl.dart';
import 'package:attendance_app/src/features/auth/data/datasources/local/auth_local_datasource.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/domain/entities/profile_entity.dart';
import 'package:attendance_app/src/features/auth/domain/repositories/auth_repositories.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSourceImpl _apiDataSource;
  final AuthLocalDataSource _localDataSource;

  AuthRepositoryImpl({
    required AuthDataSourceImpl apiDataSource,
    required AuthLocalDataSource localDataSource,
  }) : _apiDataSource = apiDataSource,
       _localDataSource = localDataSource;

  @override
  FutureEither<AuthSession> signIn({
    required String email,
    required String password,
  }) async {
    // Call API to authenticate
    final apiResult = await _apiDataSource.signIn(
      email: email,
      password: password,
    );

    return apiResult.fold((failure) => left(failure), (authSession) async {
      // Save session locally on successful authentication
      final saveResult = await _localDataSource.saveAuthSession(authSession);

      return saveResult.fold(
        (failure) => left(failure),
        (_) => right(authSession),
      );
    });
  }

  @override
  FutureEither<AuthSession> verifyToken() async {
    // Call API to verify token
    final apiResult = await _apiDataSource.verifyToken();

    return apiResult.fold(
      (failure) async {
        // If verification fails, clear local session
        await _localDataSource.clearAuthSession();
        return left(failure);
      },
      (authSession) async {
        // Update local session with verified data
        final saveResult = await _localDataSource.saveAuthSession(authSession);

        return saveResult.fold(
          (failure) => left(failure),
          (_) => right(authSession),
        );
      },
    );
  }

  @override
  FutureEither<ProfileEntityResponse> getProfile() async {
    return await _apiDataSource.getProfile();
  }

  /// Get stored authentication session
  FutureEither<AuthSession?> getStoredSession() async {
    return await _localDataSource.getAuthSession();
  }

  /// Get stored token
  FutureEither<String?> getStoredToken() async {
    return await _localDataSource.getToken();
  }

  /// Clear stored authentication data
  FutureEither<void> signOut() async {
    return await _localDataSource.clearAuthSession();
  }
}
