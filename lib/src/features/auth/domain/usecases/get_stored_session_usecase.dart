import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';

class GetStoredSessionUseCase {
  final AuthRepositoryImpl _authRepository;

  GetStoredSessionUseCase(this._authRepository);

  FutureEither<AuthSession?> call() async {
    return await _authRepository.getStoredSession();
  }
}
