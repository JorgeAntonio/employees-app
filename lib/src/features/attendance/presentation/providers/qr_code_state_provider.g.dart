// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(QrCodeNotifier)
const qrCodeNotifierProvider = QrCodeNotifierProvider._();

final class QrCodeNotifierProvider
    extends $NotifierProvider<QrCodeNotifier, QrCodeState> {
  const QrCodeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'qrCodeNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$qrCodeNotifierHash();

  @$internal
  @override
  QrCodeNotifier create() => QrCodeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QrCodeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QrCodeState>(value),
    );
  }
}

String _$qrCodeNotifierHash() => r'bd5093317366f6d717fca0b04cabc63677503f1b';

abstract class _$QrCodeNotifier extends $Notifier<QrCodeState> {
  QrCodeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<QrCodeState, QrCodeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<QrCodeState, QrCodeState>,
              QrCodeState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
