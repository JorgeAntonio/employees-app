import 'package:attendance_app/src/features/auth/domain/entities/profile_entity.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_api_providers.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  FutureOr<ProfileEntityResponse?> build() {
    return null; // Estado inicial
  }

  Future<void> loadProfile() async {
    state = const AsyncLoading();

    final getProfileUseCase = ref.read(getProfileUseCaseProvider);
    final result = await getProfileUseCase();

    result.fold(
      (failure) => state = AsyncError(failure, StackTrace.current),
      (profile) => state = AsyncData(profile),
    );
  }

  Future<void> refreshProfile() async {
    await loadProfile();
  }
}
