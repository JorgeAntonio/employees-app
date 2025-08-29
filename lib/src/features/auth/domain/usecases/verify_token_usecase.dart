import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/domain/repositories/auth_repositories.dart';

class VerifyTokenUseCase {
  final AuthRepository _authRepository;

  VerifyTokenUseCase(this._authRepository);

  FutureEither<AuthSession> call() async {
    return await _authRepository.verifyToken();
  }
}
