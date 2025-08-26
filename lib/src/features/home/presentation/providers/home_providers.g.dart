// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(homeDio)
const homeDioProvider = HomeDioProvider._();

final class HomeDioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const HomeDioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeDioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeDioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return homeDio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$homeDioHash() => r'1b8121920a80c498d5b81a2f70ca2e5d4db606ba';

@ProviderFor(homeApiDataSource)
const homeApiDataSourceProvider = HomeApiDataSourceProvider._();

final class HomeApiDataSourceProvider
    extends $FunctionalProvider<HomeDataSource, HomeDataSource, HomeDataSource>
    with $Provider<HomeDataSource> {
  const HomeApiDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeApiDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeApiDataSourceHash();

  @$internal
  @override
  $ProviderElement<HomeDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HomeDataSource create(Ref ref) {
    return homeApiDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeDataSource>(value),
    );
  }
}

String _$homeApiDataSourceHash() => r'6f1d4d7d17dba0faef74c5fdd65e2ee488da3543';

@ProviderFor(homeRepository)
const homeRepositoryProvider = HomeRepositoryProvider._();

final class HomeRepositoryProvider
    extends $FunctionalProvider<HomeRepository, HomeRepository, HomeRepository>
    with $Provider<HomeRepository> {
  const HomeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeRepositoryHash();

  @$internal
  @override
  $ProviderElement<HomeRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HomeRepository create(Ref ref) {
    return homeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeRepository>(value),
    );
  }
}

String _$homeRepositoryHash() => r'87fac8cc780a019fdefd7a2765cf4514fdee8f59';

@ProviderFor(getUserStatsUseCase)
const getUserStatsUseCaseProvider = GetUserStatsUseCaseProvider._();

final class GetUserStatsUseCaseProvider
    extends
        $FunctionalProvider<
          GetUserStatsUseCase,
          GetUserStatsUseCase,
          GetUserStatsUseCase
        >
    with $Provider<GetUserStatsUseCase> {
  const GetUserStatsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getUserStatsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getUserStatsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetUserStatsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUserStatsUseCase create(Ref ref) {
    return getUserStatsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUserStatsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUserStatsUseCase>(value),
    );
  }
}

String _$getUserStatsUseCaseHash() =>
    r'8c657543db0d076d073d891176413694ac9d28eb';

@ProviderFor(userStats)
const userStatsProvider = UserStatsProvider._();

final class UserStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserStatsEntityResponse>,
          UserStatsEntityResponse,
          FutureOr<UserStatsEntityResponse>
        >
    with
        $FutureModifier<UserStatsEntityResponse>,
        $FutureProvider<UserStatsEntityResponse> {
  const UserStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userStatsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userStatsHash();

  @$internal
  @override
  $FutureProviderElement<UserStatsEntityResponse> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UserStatsEntityResponse> create(Ref ref) {
    return userStats(ref);
  }
}

String _$userStatsHash() => r'68b41ee669c32e378e6369a523171efda8d85195';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
