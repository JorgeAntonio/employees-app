import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/domain/entities/profile_entity.dart';

abstract class AuthRepository {
  FutureEither<AuthSession> signIn({
    required String email,
    required String password,
  });
  FutureEither<AuthSession> verifyToken();
  FutureEither<ProfileEntityResponse> getProfile();
}
