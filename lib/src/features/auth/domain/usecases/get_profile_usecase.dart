import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/domain/entities/profile_entity.dart';
import 'package:attendance_app/src/features/auth/domain/repositories/auth_repositories.dart';

class GetProfileUseCase {
  final AuthRepository _authRepository;

  GetProfileUseCase(this._authRepository);

  FutureEither<ProfileEntityResponse> call() async {
    return await _authRepository.getProfile();
  }
}
