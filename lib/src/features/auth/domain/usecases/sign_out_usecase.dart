import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/data/repositories/auth_repository_impl.dart';

class SignOutUseCase {
  final AuthRepositoryImpl _authRepository;

  SignOutUseCase(this._authRepository);

  FutureEither<void> call() async {
    return await _authRepository.signOut();
  }
}
