// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(employeesDio)
const employeesDioProvider = EmployeesDioProvider._();

final class EmployeesDioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const EmployeesDioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesDioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesDioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return employeesDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$employeesDioHash() => r'd24e78b4619aaf6bbea20e5313d96187e1b86945';

@ProviderFor(employeesApiDataSource)
const employeesApiDataSourceProvider = EmployeesApiDataSourceProvider._();

final class EmployeesApiDataSourceProvider
    extends
        $FunctionalProvider<
          EmployeesDataSourceImpl,
          EmployeesDataSourceImpl,
          EmployeesDataSourceImpl
        >
    with $Provider<EmployeesDataSourceImpl> {
  const EmployeesApiDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesApiDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesApiDataSourceHash();

  @$internal
  @override
  $ProviderElement<EmployeesDataSourceImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EmployeesDataSourceImpl create(Ref ref) {
    return employeesApiDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmployeesDataSourceImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmployeesDataSourceImpl>(value),
    );
  }
}

String _$employeesApiDataSourceHash() =>
    r'e4536699204ad0c1734374e8e3a1a3e5f45a6b9d';

@ProviderFor(employeesRepository)
const employeesRepositoryProvider = EmployeesRepositoryProvider._();

final class EmployeesRepositoryProvider
    extends
        $FunctionalProvider<
          EmployeesRepository,
          EmployeesRepository,
          EmployeesRepository
        >
    with $Provider<EmployeesRepository> {
  const EmployeesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesRepositoryHash();

  @$internal
  @override
  $ProviderElement<EmployeesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EmployeesRepository create(Ref ref) {
    return employeesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmployeesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmployeesRepository>(value),
    );
  }
}

String _$employeesRepositoryHash() =>
    r'934f9d7b8cf4e7db027156dcec0026cd576fe212';

@ProviderFor(getEmployeesUseCase)
const getEmployeesUseCaseProvider = GetEmployeesUseCaseProvider._();

final class GetEmployeesUseCaseProvider
    extends
        $FunctionalProvider<
          GetEmployeesUseCase,
          GetEmployeesUseCase,
          GetEmployeesUseCase
        >
    with $Provider<GetEmployeesUseCase> {
  const GetEmployeesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getEmployeesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getEmployeesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetEmployeesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetEmployeesUseCase create(Ref ref) {
    return getEmployeesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetEmployeesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetEmployeesUseCase>(value),
    );
  }
}

String _$getEmployeesUseCaseHash() =>
    r'c7664faffbc267abb7e0888b92882c47890e6038';

@ProviderFor(addEmployeeUseCase)
const addEmployeeUseCaseProvider = AddEmployeeUseCaseProvider._();

final class AddEmployeeUseCaseProvider
    extends
        $FunctionalProvider<
          AddEmployeeUseCase,
          AddEmployeeUseCase,
          AddEmployeeUseCase
        >
    with $Provider<AddEmployeeUseCase> {
  const AddEmployeeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addEmployeeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addEmployeeUseCaseHash();

  @$internal
  @override
  $ProviderElement<AddEmployeeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AddEmployeeUseCase create(Ref ref) {
    return addEmployeeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddEmployeeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddEmployeeUseCase>(value),
    );
  }
}

String _$addEmployeeUseCaseHash() =>
    r'2711fd97529c757406a0059650a2b4d250cc77c0';

@ProviderFor(getDailyAttendanceUseCase)
const getDailyAttendanceUseCaseProvider = GetDailyAttendanceUseCaseProvider._();

final class GetDailyAttendanceUseCaseProvider
    extends
        $FunctionalProvider<
          GetDailyAttendanceUseCase,
          GetDailyAttendanceUseCase,
          GetDailyAttendanceUseCase
        >
    with $Provider<GetDailyAttendanceUseCase> {
  const GetDailyAttendanceUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getDailyAttendanceUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getDailyAttendanceUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetDailyAttendanceUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetDailyAttendanceUseCase create(Ref ref) {
    return getDailyAttendanceUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetDailyAttendanceUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetDailyAttendanceUseCase>(value),
    );
  }
}

String _$getDailyAttendanceUseCaseHash() =>
    r'd1d48a13cd1843d5f943efab9083f89786f9f15c';

@ProviderFor(updateEmployeeUseCase)
const updateEmployeeUseCaseProvider = UpdateEmployeeUseCaseProvider._();

final class UpdateEmployeeUseCaseProvider
    extends
        $FunctionalProvider<
          UpdateEmployeeUseCase,
          UpdateEmployeeUseCase,
          UpdateEmployeeUseCase
        >
    with $Provider<UpdateEmployeeUseCase> {
  const UpdateEmployeeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateEmployeeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateEmployeeUseCaseHash();

  @$internal
  @override
  $ProviderElement<UpdateEmployeeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateEmployeeUseCase create(Ref ref) {
    return updateEmployeeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateEmployeeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateEmployeeUseCase>(value),
    );
  }
}

String _$updateEmployeeUseCaseHash() =>
    r'75fd8b1369ccb3f5786e278bdbf9ba1f367941ab';

@ProviderFor(EmployeesRequestNotifier)
const employeesRequestNotifierProvider = EmployeesRequestNotifierProvider._();

final class EmployeesRequestNotifierProvider
    extends $NotifierProvider<EmployeesRequestNotifier, EmployeesRequest> {
  const EmployeesRequestNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesRequestNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesRequestNotifierHash();

  @$internal
  @override
  EmployeesRequestNotifier create() => EmployeesRequestNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmployeesRequest value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmployeesRequest>(value),
    );
  }
}

String _$employeesRequestNotifierHash() =>
    r'34b6d72006693038dd5441a95877cd48a0c79b27';

abstract class _$EmployeesRequestNotifier extends $Notifier<EmployeesRequest> {
  EmployeesRequest build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EmployeesRequest, EmployeesRequest>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EmployeesRequest, EmployeesRequest>,
              EmployeesRequest,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(employees)
const employeesProvider = EmployeesProvider._();

final class EmployeesProvider
    extends
        $FunctionalProvider<
          AsyncValue<EmployeesResponse>,
          EmployeesResponse,
          FutureOr<EmployeesResponse>
        >
    with
        $FutureModifier<EmployeesResponse>,
        $FutureProvider<EmployeesResponse> {
  const EmployeesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesHash();

  @$internal
  @override
  $FutureProviderElement<EmployeesResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<EmployeesResponse> create(Ref ref) {
    return employees(ref);
  }
}

String _$employeesHash() => r'e638784d63e68c6a9c1caeb27e1fead6ec6a63c2';

@ProviderFor(EmployeesNotifier)
const employeesNotifierProvider = EmployeesNotifierProvider._();

final class EmployeesNotifierProvider
    extends $NotifierProvider<EmployeesNotifier, List<Employee>> {
  const EmployeesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesNotifierHash();

  @$internal
  @override
  EmployeesNotifier create() => EmployeesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Employee> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Employee>>(value),
    );
  }
}

String _$employeesNotifierHash() => r'5c0600fb24a44f79b973de1e7b43493fb942d29e';

abstract class _$EmployeesNotifier extends $Notifier<List<Employee>> {
  List<Employee> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Employee>, List<Employee>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Employee>, List<Employee>>,
              List<Employee>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(EmployeesStateNotifier)
const employeesStateNotifierProvider = EmployeesStateNotifierProvider._();

final class EmployeesStateNotifierProvider
    extends
        $NotifierProvider<
          EmployeesStateNotifier,
          AsyncValue<EmployeesResponse?>
        > {
  const EmployeesStateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'employeesStateNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$employeesStateNotifierHash();

  @$internal
  @override
  EmployeesStateNotifier create() => EmployeesStateNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<EmployeesResponse?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<EmployeesResponse?>>(
        value,
      ),
    );
  }
}

String _$employeesStateNotifierHash() =>
    r'7e7659b7b559192e6e65b2a8907404a7351b171f';

abstract class _$EmployeesStateNotifier
    extends $Notifier<AsyncValue<EmployeesResponse?>> {
  AsyncValue<EmployeesResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<EmployeesResponse?>,
              AsyncValue<EmployeesResponse?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<EmployeesResponse?>,
                AsyncValue<EmployeesResponse?>
              >,
              AsyncValue<EmployeesResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(DailyAttendanceRequestNotifier)
const dailyAttendanceRequestNotifierProvider =
    DailyAttendanceRequestNotifierProvider._();

final class DailyAttendanceRequestNotifierProvider
    extends
        $NotifierProvider<
          DailyAttendanceRequestNotifier,
          DailyAttendanceRequest
        > {
  const DailyAttendanceRequestNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyAttendanceRequestNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyAttendanceRequestNotifierHash();

  @$internal
  @override
  DailyAttendanceRequestNotifier create() => DailyAttendanceRequestNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DailyAttendanceRequest value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DailyAttendanceRequest>(value),
    );
  }
}

String _$dailyAttendanceRequestNotifierHash() =>
    r'0169aa3c669d936c33d4a3d341f0a48d65fe16d9';

abstract class _$DailyAttendanceRequestNotifier
    extends $Notifier<DailyAttendanceRequest> {
  DailyAttendanceRequest build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<DailyAttendanceRequest, DailyAttendanceRequest>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DailyAttendanceRequest, DailyAttendanceRequest>,
              DailyAttendanceRequest,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(dailyAttendance)
const dailyAttendanceProvider = DailyAttendanceProvider._();

final class DailyAttendanceProvider
    extends
        $FunctionalProvider<
          AsyncValue<DailyAttendanceResponse>,
          DailyAttendanceResponse,
          FutureOr<DailyAttendanceResponse>
        >
    with
        $FutureModifier<DailyAttendanceResponse>,
        $FutureProvider<DailyAttendanceResponse> {
  const DailyAttendanceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyAttendanceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyAttendanceHash();

  @$internal
  @override
  $FutureProviderElement<DailyAttendanceResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DailyAttendanceResponse> create(Ref ref) {
    return dailyAttendance(ref);
  }
}

String _$dailyAttendanceHash() => r'82f0280a82ab044f1fe78a4a9385182f74d6b831';

@ProviderFor(DailyAttendanceNotifier)
const dailyAttendanceNotifierProvider = DailyAttendanceNotifierProvider._();

final class DailyAttendanceNotifierProvider
    extends
        $NotifierProvider<
          DailyAttendanceNotifier,
          AsyncValue<DailyAttendanceResponse?>
        > {
  const DailyAttendanceNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dailyAttendanceNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dailyAttendanceNotifierHash();

  @$internal
  @override
  DailyAttendanceNotifier create() => DailyAttendanceNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<DailyAttendanceResponse?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<DailyAttendanceResponse?>>(value),
    );
  }
}

String _$dailyAttendanceNotifierHash() =>
    r'68214118fdb8718bb67a7ab6bc67e5ffe2c1fad2';

abstract class _$DailyAttendanceNotifier
    extends $Notifier<AsyncValue<DailyAttendanceResponse?>> {
  AsyncValue<DailyAttendanceResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<DailyAttendanceResponse?>,
              AsyncValue<DailyAttendanceResponse?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<DailyAttendanceResponse?>,
                AsyncValue<DailyAttendanceResponse?>
              >,
              AsyncValue<DailyAttendanceResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(UpdateEmployeeNotifier)
const updateEmployeeNotifierProvider = UpdateEmployeeNotifierProvider._();

final class UpdateEmployeeNotifierProvider
    extends
        $NotifierProvider<
          UpdateEmployeeNotifier,
          AsyncValue<EmployeesResponse?>
        > {
  const UpdateEmployeeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateEmployeeNotifierProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateEmployeeNotifierHash();

  @$internal
  @override
  UpdateEmployeeNotifier create() => UpdateEmployeeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<EmployeesResponse?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<EmployeesResponse?>>(
        value,
      ),
    );
  }
}

String _$updateEmployeeNotifierHash() =>
    r'64ac03bea4b775899c3d84db999070192cb9e48b';

abstract class _$UpdateEmployeeNotifier
    extends $Notifier<AsyncValue<EmployeesResponse?>> {
  AsyncValue<EmployeesResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<EmployeesResponse?>,
              AsyncValue<EmployeesResponse?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<EmployeesResponse?>,
                AsyncValue<EmployeesResponse?>
              >,
              AsyncValue<EmployeesResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
