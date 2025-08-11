import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';

abstract class AuthLocalDataSource {
  FutureEither<void> saveAuthSession(AuthSession authSession);
  FutureEither<AuthSession?> getAuthSession();
  FutureEither<void> clearAuthSession();
  FutureEither<String?> getToken();
}
