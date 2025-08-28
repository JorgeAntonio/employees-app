import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

@riverpod
class AuthState extends _$AuthState {
  @override
  FutureOr<AuthSession?> build() async {
    // Try to load stored session first
    final getStoredSessionUseCase = ref.read(getStoredSessionUseCaseProvider);
    final storedSessionResult = await getStoredSessionUseCase();

    return await storedSessionResult.fold(
      (failure) => null, // If error getting stored session, return null
      (storedSession) async {
        if (storedSession == null) {
          return null; // No stored session
        }

        // We have a stored session, now verify if the token is still valid
        final verifyTokenUseCase = ref.read(verifyTokenUseCaseProvider);
        final verifyResult = await verifyTokenUseCase();

        return verifyResult.fold(
          (failure) {
            // Token is invalid, return null (user will need to sign in again)
            return null;
          },
          (verifiedSession) {
            // Token is valid, return the verified session
            return verifiedSession;
          },
        );
      },
    );
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

  Future<void> verifySession() async {
    final currentState = state.value;
    if (currentState == null) return;

    final verifyTokenUseCase = ref.read(verifyTokenUseCaseProvider);
    final result = await verifyTokenUseCase();

    state = result.fold(
      (failure) =>
          const AsyncValue.data(null), // Clear session if verification fails
      (authSession) => AsyncValue.data(authSession),
    );
  }

  Future<void> signOut() async {
    // Use the SignOutUseCase to properly clear the session
    final signOutUseCase = ref.read(signOutUseCaseProvider);
    await signOutUseCase();

    // Update state to null
    state = const AsyncValue.data(null);
  }
}
