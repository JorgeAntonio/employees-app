// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_attendance_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ConfirmAttendanceNotifier)
const confirmAttendanceNotifierProvider = ConfirmAttendanceNotifierProvider._();

final class ConfirmAttendanceNotifierProvider
    extends
        $NotifierProvider<ConfirmAttendanceNotifier, ConfirmAttendanceState> {
  const ConfirmAttendanceNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmAttendanceNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmAttendanceNotifierHash();

  @$internal
  @override
  ConfirmAttendanceNotifier create() => ConfirmAttendanceNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfirmAttendanceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfirmAttendanceState>(value),
    );
  }
}

String _$confirmAttendanceNotifierHash() =>
    r'd4e1815844e329941f0eb43eb2c1d2540eff73a6';

abstract class _$ConfirmAttendanceNotifier
    extends $Notifier<ConfirmAttendanceState> {
  ConfirmAttendanceState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<ConfirmAttendanceState, ConfirmAttendanceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ConfirmAttendanceState, ConfirmAttendanceState>,
              ConfirmAttendanceState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
