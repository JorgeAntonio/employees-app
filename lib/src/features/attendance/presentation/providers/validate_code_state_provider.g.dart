// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_code_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ValidateCodeNotifier)
const validateCodeNotifierProvider = ValidateCodeNotifierProvider._();

final class ValidateCodeNotifierProvider
    extends $NotifierProvider<ValidateCodeNotifier, ValidateCodeState> {
  const ValidateCodeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'validateCodeNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$validateCodeNotifierHash();

  @$internal
  @override
  ValidateCodeNotifier create() => ValidateCodeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ValidateCodeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ValidateCodeState>(value),
    );
  }
}

String _$validateCodeNotifierHash() =>
    r'd295dce32990b1b619c725e45cfe58806c9736c1';

abstract class _$ValidateCodeNotifier extends $Notifier<ValidateCodeState> {
  ValidateCodeState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ValidateCodeState, ValidateCodeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ValidateCodeState, ValidateCodeState>,
              ValidateCodeState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
