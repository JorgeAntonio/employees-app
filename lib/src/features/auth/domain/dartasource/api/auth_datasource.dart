import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';

abstract class AuthDataSource {
  FutureEither<AuthSession> signIn({
    required String email,
    required String password,
  });
  FutureEither<void> signOut();
}
