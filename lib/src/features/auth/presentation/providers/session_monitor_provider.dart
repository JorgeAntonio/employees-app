import 'dart:async';

import 'package:attendance_app/src/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_monitor_provider.g.dart';

@riverpod
class SessionMonitor extends _$SessionMonitor {
  Timer? _timer;

  @override
  bool build() {
    // Start monitoring when the provider is created
    _startSessionMonitoring();
    
    // Cleanup when the provider is disposed
    ref.onDispose(() {
      _timer?.cancel();
    });
    
    return true; // Initial state
  }

  void _startSessionMonitoring() {
    // Check session every 30 minutes
    _timer = Timer.periodic(const Duration(minutes: 30), (timer) {
      final authState = ref.read(authStateProvider.notifier);
      authState.verifySession();
    });
  }

  void stopMonitoring() {
    _timer?.cancel();
    _timer = null;
  }

  void restartMonitoring() {
    stopMonitoring();
    _startSessionMonitoring();
  }
}
