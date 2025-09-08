// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(EditProfileFormNotifier)
const editProfileFormNotifierProvider = EditProfileFormNotifierProvider._();

final class EditProfileFormNotifierProvider
    extends $NotifierProvider<EditProfileFormNotifier, EditProfileFormState> {
  const EditProfileFormNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editProfileFormNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editProfileFormNotifierHash();

  @$internal
  @override
  EditProfileFormNotifier create() => EditProfileFormNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EditProfileFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EditProfileFormState>(value),
    );
  }
}

String _$editProfileFormNotifierHash() =>
    r'86c1c40d71cb667a8ab247ab4befc3073ea359d8';

abstract class _$EditProfileFormNotifier
    extends $Notifier<EditProfileFormState> {
  EditProfileFormState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EditProfileFormState, EditProfileFormState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EditProfileFormState, EditProfileFormState>,
              EditProfileFormState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(UpdateProfileNotifier)
const updateProfileNotifierProvider = UpdateProfileNotifierProvider._();

final class UpdateProfileNotifierProvider
    extends
        $NotifierProvider<
          UpdateProfileNotifier,
          AsyncValue<UpdateEmployeeResponse?>
        > {
  const UpdateProfileNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateProfileNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateProfileNotifierHash();

  @$internal
  @override
  UpdateProfileNotifier create() => UpdateProfileNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<UpdateEmployeeResponse?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<UpdateEmployeeResponse?>>(
        value,
      ),
    );
  }
}

String _$updateProfileNotifierHash() =>
    r'0a05af96a029546a03147aca0b8f76124456afed';

abstract class _$UpdateProfileNotifier
    extends $Notifier<AsyncValue<UpdateEmployeeResponse?>> {
  AsyncValue<UpdateEmployeeResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<UpdateEmployeeResponse?>,
              AsyncValue<UpdateEmployeeResponse?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<UpdateEmployeeResponse?>,
                AsyncValue<UpdateEmployeeResponse?>
              >,
              AsyncValue<UpdateEmployeeResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
