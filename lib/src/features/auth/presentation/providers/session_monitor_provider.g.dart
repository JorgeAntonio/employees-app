// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_monitor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(SessionMonitor)
const sessionMonitorProvider = SessionMonitorProvider._();

final class SessionMonitorProvider
    extends $NotifierProvider<SessionMonitor, bool> {
  const SessionMonitorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionMonitorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionMonitorHash();

  @$internal
  @override
  SessionMonitor create() => SessionMonitor();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$sessionMonitorHash() => r'f916ed881e6bf34aa6dbcb726b04fc6ff97cc4fb';

abstract class _$SessionMonitor extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
