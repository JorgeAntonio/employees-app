// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'a03da399b44b3740dc4fcfc6716203041d66ff01';

@ProviderFor(attendanceRemoteDataSource)
const attendanceRemoteDataSourceProvider =
    AttendanceRemoteDataSourceProvider._();

final class AttendanceRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AttendanceRemoteDataSource,
          AttendanceRemoteDataSource,
          AttendanceRemoteDataSource
        >
    with $Provider<AttendanceRemoteDataSource> {
  const AttendanceRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<AttendanceRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AttendanceRemoteDataSource create(Ref ref) {
    return attendanceRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceRemoteDataSource>(value),
    );
  }
}

String _$attendanceRemoteDataSourceHash() =>
    r'841607982eae456cae755dfcb3d6351c82e6e5ba';

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
    r'ece0213ed0bf41c0abd5e71d317458cdcd209294';

@ProviderFor(generateCheckInQRUseCase)
const generateCheckInQRUseCaseProvider = GenerateCheckInQRUseCaseProvider._();

final class GenerateCheckInQRUseCaseProvider
    extends
        $FunctionalProvider<
          GenerateCheckInQRUseCase,
          GenerateCheckInQRUseCase,
          GenerateCheckInQRUseCase
        >
    with $Provider<GenerateCheckInQRUseCase> {
  const GenerateCheckInQRUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generateCheckInQRUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generateCheckInQRUseCaseHash();

  @$internal
  @override
  $ProviderElement<GenerateCheckInQRUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GenerateCheckInQRUseCase create(Ref ref) {
    return generateCheckInQRUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GenerateCheckInQRUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GenerateCheckInQRUseCase>(value),
    );
  }
}

String _$generateCheckInQRUseCaseHash() =>
    r'e3a3702e616bf489e6046a6a4df921bf31f0260b';

@ProviderFor(generateCheckOutQRUseCase)
const generateCheckOutQRUseCaseProvider = GenerateCheckOutQRUseCaseProvider._();

final class GenerateCheckOutQRUseCaseProvider
    extends
        $FunctionalProvider<
          GenerateCheckOutQRUseCase,
          GenerateCheckOutQRUseCase,
          GenerateCheckOutQRUseCase
        >
    with $Provider<GenerateCheckOutQRUseCase> {
  const GenerateCheckOutQRUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generateCheckOutQRUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generateCheckOutQRUseCaseHash();

  @$internal
  @override
  $ProviderElement<GenerateCheckOutQRUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GenerateCheckOutQRUseCase create(Ref ref) {
    return generateCheckOutQRUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GenerateCheckOutQRUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GenerateCheckOutQRUseCase>(value),
    );
  }
}

String _$generateCheckOutQRUseCaseHash() =>
    r'75cd995c3ff02aeca06af473c71479c380254c0a';

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
    r'2d41adf312770646b1dff6b927791ea4953cca6a';

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
    r'c4c766c5238f19c4fdb73704cd986c75949df0a5';

@ProviderFor(getAttendanceHistoryUseCase)
const getAttendanceHistoryUseCaseProvider =
    GetAttendanceHistoryUseCaseProvider._();

final class GetAttendanceHistoryUseCaseProvider
    extends
        $FunctionalProvider<
          GetAttendanceHistoryUseCase,
          GetAttendanceHistoryUseCase,
          GetAttendanceHistoryUseCase
        >
    with $Provider<GetAttendanceHistoryUseCase> {
  const GetAttendanceHistoryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAttendanceHistoryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAttendanceHistoryUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAttendanceHistoryUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAttendanceHistoryUseCase create(Ref ref) {
    return getAttendanceHistoryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAttendanceHistoryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAttendanceHistoryUseCase>(value),
    );
  }
}

String _$getAttendanceHistoryUseCaseHash() =>
    r'b15fa6e0c7b6d16ea5c07b13f47051249fa2592a';

@ProviderFor(getAttendanceStatusUseCase)
const getAttendanceStatusUseCaseProvider =
    GetAttendanceStatusUseCaseProvider._();

final class GetAttendanceStatusUseCaseProvider
    extends
        $FunctionalProvider<
          GetAttendanceStatusUseCase,
          GetAttendanceStatusUseCase,
          GetAttendanceStatusUseCase
        >
    with $Provider<GetAttendanceStatusUseCase> {
  const GetAttendanceStatusUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAttendanceStatusUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAttendanceStatusUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAttendanceStatusUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAttendanceStatusUseCase create(Ref ref) {
    return getAttendanceStatusUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAttendanceStatusUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAttendanceStatusUseCase>(value),
    );
  }
}

String _$getAttendanceStatusUseCaseHash() =>
    r'2782ae5d6d5609a5398aec81ec602dfe86b91c6a';

@ProviderFor(getEmployeeProfileUseCase)
const getEmployeeProfileUseCaseProvider = GetEmployeeProfileUseCaseProvider._();

final class GetEmployeeProfileUseCaseProvider
    extends
        $FunctionalProvider<
          GetEmployeeProfileUseCase,
          GetEmployeeProfileUseCase,
          GetEmployeeProfileUseCase
        >
    with $Provider<GetEmployeeProfileUseCase> {
  const GetEmployeeProfileUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEmployeeProfileUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEmployeeProfileUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetEmployeeProfileUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetEmployeeProfileUseCase create(Ref ref) {
    return getEmployeeProfileUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEmployeeProfileUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEmployeeProfileUseCase>(value),
    );
  }
}

String _$getEmployeeProfileUseCaseHash() =>
    r'f3701d60434feca39064b2f59f67d1c8daeb930e';

@ProviderFor(QRCodeNotifier)
const qRCodeNotifierProvider = QRCodeNotifierProvider._();

final class QRCodeNotifierProvider
    extends $AsyncNotifierProvider<QRCodeNotifier, Either<Exception, QRCode>> {
  const QRCodeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'qRCodeNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$qRCodeNotifierHash();

  @$internal
  @override
  QRCodeNotifier create() => QRCodeNotifier();
}

String _$qRCodeNotifierHash() => r'd9c934b11af5ed93696aa27efe4b4e33aab6ab08';

abstract class _$QRCodeNotifier
    extends $AsyncNotifier<Either<Exception, QRCode>> {
  FutureOr<Either<Exception, QRCode>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Either<Exception, QRCode>>,
              Either<Exception, QRCode>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Either<Exception, QRCode>>,
                Either<Exception, QRCode>
              >,
              AsyncValue<Either<Exception, QRCode>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AttendanceValidationNotifier)
const attendanceValidationNotifierProvider =
    AttendanceValidationNotifierProvider._();

final class AttendanceValidationNotifierProvider
    extends
        $AsyncNotifierProvider<
          AttendanceValidationNotifier,
          Either<Exception, AttendanceValidation>
        > {
  const AttendanceValidationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceValidationNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceValidationNotifierHash();

  @$internal
  @override
  AttendanceValidationNotifier create() => AttendanceValidationNotifier();
}

String _$attendanceValidationNotifierHash() =>
    r'265302439af7cbf890b5400d4683083867dcef4b';

abstract class _$AttendanceValidationNotifier
    extends $AsyncNotifier<Either<Exception, AttendanceValidation>> {
  FutureOr<Either<Exception, AttendanceValidation>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Either<Exception, AttendanceValidation>>,
              Either<Exception, AttendanceValidation>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Either<Exception, AttendanceValidation>>,
                Either<Exception, AttendanceValidation>
              >,
              AsyncValue<Either<Exception, AttendanceValidation>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AttendanceConfirmationNotifier)
const attendanceConfirmationNotifierProvider =
    AttendanceConfirmationNotifierProvider._();

final class AttendanceConfirmationNotifierProvider
    extends
        $AsyncNotifierProvider<
          AttendanceConfirmationNotifier,
          Either<Exception, AttendanceRecord>
        > {
  const AttendanceConfirmationNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceConfirmationNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceConfirmationNotifierHash();

  @$internal
  @override
  AttendanceConfirmationNotifier create() => AttendanceConfirmationNotifier();
}

String _$attendanceConfirmationNotifierHash() =>
    r'bd8308d31d81057bbcf557bea546d96583e9c64c';

abstract class _$AttendanceConfirmationNotifier
    extends $AsyncNotifier<Either<Exception, AttendanceRecord>> {
  FutureOr<Either<Exception, AttendanceRecord>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Either<Exception, AttendanceRecord>>,
              Either<Exception, AttendanceRecord>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Either<Exception, AttendanceRecord>>,
                Either<Exception, AttendanceRecord>
              >,
              AsyncValue<Either<Exception, AttendanceRecord>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AttendanceHistoryNotifier)
const attendanceHistoryNotifierProvider = AttendanceHistoryNotifierProvider._();

final class AttendanceHistoryNotifierProvider
    extends
        $AsyncNotifierProvider<
          AttendanceHistoryNotifier,
          Either<Exception, AttendanceHistory>
        > {
  const AttendanceHistoryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceHistoryNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceHistoryNotifierHash();

  @$internal
  @override
  AttendanceHistoryNotifier create() => AttendanceHistoryNotifier();
}

String _$attendanceHistoryNotifierHash() =>
    r'9aa2961285308120d5ca299da7f3342ab2481456';

abstract class _$AttendanceHistoryNotifier
    extends $AsyncNotifier<Either<Exception, AttendanceHistory>> {
  FutureOr<Either<Exception, AttendanceHistory>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Either<Exception, AttendanceHistory>>,
              Either<Exception, AttendanceHistory>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Either<Exception, AttendanceHistory>>,
                Either<Exception, AttendanceHistory>
              >,
              AsyncValue<Either<Exception, AttendanceHistory>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AttendanceStatusNotifier)
const attendanceStatusNotifierProvider = AttendanceStatusNotifierProvider._();

final class AttendanceStatusNotifierProvider
    extends
        $AsyncNotifierProvider<
          AttendanceStatusNotifier,
          Either<Exception, AttendanceStatus>
        > {
  const AttendanceStatusNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceStatusNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceStatusNotifierHash();

  @$internal
  @override
  AttendanceStatusNotifier create() => AttendanceStatusNotifier();
}

String _$attendanceStatusNotifierHash() =>
    r'f7cd10f8a5b3d563223360fff8f0fc263bcfa67d';

abstract class _$AttendanceStatusNotifier
    extends $AsyncNotifier<Either<Exception, AttendanceStatus>> {
  FutureOr<Either<Exception, AttendanceStatus>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Either<Exception, AttendanceStatus>>,
              Either<Exception, AttendanceStatus>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Either<Exception, AttendanceStatus>>,
                Either<Exception, AttendanceStatus>
              >,
              AsyncValue<Either<Exception, AttendanceStatus>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(EmployeeProfileNotifier)
const employeeProfileNotifierProvider = EmployeeProfileNotifierProvider._();

final class EmployeeProfileNotifierProvider
    extends
        $AsyncNotifierProvider<
          EmployeeProfileNotifier,
          Either<Exception, EmployeeProfile>
        > {
  const EmployeeProfileNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeeProfileNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeeProfileNotifierHash();

  @$internal
  @override
  EmployeeProfileNotifier create() => EmployeeProfileNotifier();
}

String _$employeeProfileNotifierHash() =>
    r'f3eadad612b04dec110ce587d2078af0dae6a404';

abstract class _$EmployeeProfileNotifier
    extends $AsyncNotifier<Either<Exception, EmployeeProfile>> {
  FutureOr<Either<Exception, EmployeeProfile>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Either<Exception, EmployeeProfile>>,
              Either<Exception, EmployeeProfile>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Either<Exception, EmployeeProfile>>,
                Either<Exception, EmployeeProfile>
              >,
              AsyncValue<Either<Exception, EmployeeProfile>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
