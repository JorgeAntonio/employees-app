import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/domain/repositories/auth_repositories.dart';
import 'package:fpdart/fpdart.dart';

class SignInUseCase {
  final AuthRepository _authRepository;

  SignInUseCase(this._authRepository);

  FutureEither<AuthSession> call({
    required String email,
    required String password,
  }) async {
    // Validate inputs
    if (email.isEmpty) {
      return left(const AuthFailure('El email es requerido'));
    }

    if (password.isEmpty) {
      return left(const AuthFailure('La contraseña es requerida'));
    }

    if (!_isValidEmail(email)) {
      return left(const AuthFailure('El formato del email no es válido'));
    }

    // Call repository
    return await _authRepository.signIn(email: email, password: password);
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
