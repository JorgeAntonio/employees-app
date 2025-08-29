import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/data.dart';
import 'package:attendance_app/src/features/auth/domain/repositories/auth_repositories.dart';
import 'package:attendance_app/src/features/auth/domain/usecases/get_stored_session_usecase.dart';
import 'package:attendance_app/src/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:attendance_app/src/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:attendance_app/src/features/auth/domain/usecases/verify_token_usecase.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

// Dio Provider
@riverpod
Dio dio(Ref ref) {
  return DioConfig.createDio(enableLogging: true);
}

// API DataSource Provider
@riverpod
AuthDataSourceImpl authApiDataSource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AuthDataSourceImpl(dio);
}

// Local DataSource Provider
@riverpod
AuthLocalDataSource authLocalDataSource(Ref ref) {
  return AuthLocalDataSourceImpl();
}

// Repository Provider
@riverpod
AuthRepository authRepository(Ref ref) {
  final apiDataSource = ref.watch(authApiDataSourceProvider);
  final localDataSource = ref.watch(authLocalDataSourceProvider);

  return AuthRepositoryImpl(
    apiDataSource: apiDataSource,
    localDataSource: localDataSource,
  );
}

// Use Cases Providers
@riverpod
SignInUseCase signInUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return SignInUseCase(authRepository);
}

@riverpod
VerifyTokenUseCase verifyTokenUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return VerifyTokenUseCase(authRepository);
}

@riverpod
GetStoredSessionUseCase getStoredSessionUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  // Cast to concrete implementation to access the getStoredSession method
  return GetStoredSessionUseCase(authRepository as AuthRepositoryImpl);
}

@riverpod
SignOutUseCase signOutUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  // Cast to concrete implementation to access the signOut method
  return SignOutUseCase(authRepository as AuthRepositoryImpl);
}
