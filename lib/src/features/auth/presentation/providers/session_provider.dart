import 'package:attendance_app/src/features/auth/domain/entities/auth_session.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sessionProvider = Provider<AsyncValue<AuthSession?>>((ref) {
  return ref.watch(authStateProvider);
});
