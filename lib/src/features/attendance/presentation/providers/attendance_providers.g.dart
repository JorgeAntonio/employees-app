// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(attendanceDio)
const attendanceDioProvider = AttendanceDioProvider._();

final class AttendanceDioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const AttendanceDioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceDioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceDioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return attendanceDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$attendanceDioHash() => r'831589e292621d909dbf7aeaeef542669296df62';

@ProviderFor(attendanceApiDataSource)
const attendanceApiDataSourceProvider = AttendanceApiDataSourceProvider._();

final class AttendanceApiDataSourceProvider
    extends
        $FunctionalProvider<
          AttendanceDataSourceImpl,
          AttendanceDataSourceImpl,
          AttendanceDataSourceImpl
        >
    with $Provider<AttendanceDataSourceImpl> {
  const AttendanceApiDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceApiDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceApiDataSourceHash();

  @$internal
  @override
  $ProviderElement<AttendanceDataSourceImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AttendanceDataSourceImpl create(Ref ref) {
    return attendanceApiDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceDataSourceImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceDataSourceImpl>(value),
    );
  }
}

String _$attendanceApiDataSourceHash() =>
    r'eadeace99b5480f9abe8dee621866e8b4984917a';

@ProviderFor(attendanceRepository)
const attendanceRepositoryProvider = AttendanceRepositoryProvider._();

final class AttendanceRepositoryProvider
    extends
        $FunctionalProvider<
          AttendanceRepository,
          AttendanceRepository,
          AttendanceRepository
        >
    with $Provider<AttendanceRepository> {
  const AttendanceRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceRepositoryHash();

  @$internal
  @override
  $ProviderElement<AttendanceRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AttendanceRepository create(Ref ref) {
    return attendanceRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceRepository>(value),
    );
  }
}

String _$attendanceRepositoryHash() =>
    r'93e1f49e905677c4d979cca304cadfb7d014341a';

@ProviderFor(generateCheckInQrUseCase)
const generateCheckInQrUseCaseProvider = GenerateCheckInQrUseCaseProvider._();

final class GenerateCheckInQrUseCaseProvider
    extends
        $FunctionalProvider<
          GenerateCheckInQrUseCase,
          GenerateCheckInQrUseCase,
          GenerateCheckInQrUseCase
        >
    with $Provider<GenerateCheckInQrUseCase> {
  const GenerateCheckInQrUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generateCheckInQrUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generateCheckInQrUseCaseHash();

  @$internal
  @override
  $ProviderElement<GenerateCheckInQrUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GenerateCheckInQrUseCase create(Ref ref) {
    return generateCheckInQrUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GenerateCheckInQrUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GenerateCheckInQrUseCase>(value),
    );
  }
}

String _$generateCheckInQrUseCaseHash() =>
    r'1a392b92e884f069924e95f51e48d4d96ed60ba0';

@ProviderFor(generateCheckOutQrUseCase)
const generateCheckOutQrUseCaseProvider = GenerateCheckOutQrUseCaseProvider._();

final class GenerateCheckOutQrUseCaseProvider
    extends
        $FunctionalProvider<
          GenerateCheckOutQrUseCase,
          GenerateCheckOutQrUseCase,
          GenerateCheckOutQrUseCase
        >
    with $Provider<GenerateCheckOutQrUseCase> {
  const GenerateCheckOutQrUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generateCheckOutQrUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generateCheckOutQrUseCaseHash();

  @$internal
  @override
  $ProviderElement<GenerateCheckOutQrUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GenerateCheckOutQrUseCase create(Ref ref) {
    return generateCheckOutQrUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GenerateCheckOutQrUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GenerateCheckOutQrUseCase>(value),
    );
  }
}

String _$generateCheckOutQrUseCaseHash() =>
    r'9012993f4eb1c931bd56d04b2a578a3f9eb2c33c';

@ProviderFor(validateCodeUseCase)
const validateCodeUseCaseProvider = ValidateCodeUseCaseProvider._();

final class ValidateCodeUseCaseProvider
    extends
        $FunctionalProvider<
          ValidateCodeUseCase,
          ValidateCodeUseCase,
          ValidateCodeUseCase
        >
    with $Provider<ValidateCodeUseCase> {
  const ValidateCodeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'validateCodeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$validateCodeUseCaseHash();

  @$internal
  @override
  $ProviderElement<ValidateCodeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ValidateCodeUseCase create(Ref ref) {
    return validateCodeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ValidateCodeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ValidateCodeUseCase>(value),
    );
  }
}

String _$validateCodeUseCaseHash() =>
    r'cd25e8c6f7b93083abb66316bbe7647409bb6b37';

@ProviderFor(confirmAttendanceUseCase)
const confirmAttendanceUseCaseProvider = ConfirmAttendanceUseCaseProvider._();

final class ConfirmAttendanceUseCaseProvider
    extends
        $FunctionalProvider<
          ConfirmAttendanceUseCase,
          ConfirmAttendanceUseCase,
          ConfirmAttendanceUseCase
        >
    with $Provider<ConfirmAttendanceUseCase> {
  const ConfirmAttendanceUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'confirmAttendanceUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$confirmAttendanceUseCaseHash();

  @$internal
  @override
  $ProviderElement<ConfirmAttendanceUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConfirmAttendanceUseCase create(Ref ref) {
    return confirmAttendanceUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConfirmAttendanceUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConfirmAttendanceUseCase>(value),
    );
  }
}

String _$confirmAttendanceUseCaseHash() =>
    r'eaee340f9ac53f678deaf466aa00c22217543780';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
