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

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
