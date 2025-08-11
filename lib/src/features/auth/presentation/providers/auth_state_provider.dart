import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

@riverpod
class AuthState extends _$AuthState {
  @override
  FutureOr<AuthSession?> build() async {
    // Initialize with stored session if available
    return null;
  }

  Future<void> signIn({required String email, required String password}) async {
    state = const AsyncValue.loading();

    final signInUseCase = ref.read(signInUseCaseProvider);
    final result = await signInUseCase(email: email, password: password);

    state = result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (authSession) => AsyncValue.data(authSession),
    );
  }

  void signOut() {
    state = const AsyncValue.data(null);
  }
}
