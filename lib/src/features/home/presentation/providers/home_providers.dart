import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/auth/presentation/providers/auth_providers.dart';
import 'package:attendance_app/src/features/home/data/datasources/api/home_datasource_impl.dart';
import 'package:attendance_app/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:attendance_app/src/features/home/domain/datasources/api/home_datasource.dart';
import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';
import 'package:attendance_app/src/features/home/domain/repository/home_repository.dart';
import 'package:attendance_app/src/features/home/domain/usecases/get_user_stats_usecase.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

// Dio Provider
@riverpod
Dio homeDio(Ref ref) {
  return DioConfig.createDio(enableLogging: true);
}

// API DataSource Provider
@riverpod
HomeDataSource homeApiDataSource(Ref ref) {
  final dio = ref.watch(homeDioProvider);
  final authLocalDataSource = ref.watch(authLocalDataSourceProvider);
  return HomeDataSourceImpl(dio, authLocalDataSource);
}

// Repository Provider
@riverpod
HomeRepository homeRepository(Ref ref) {
  final apiDataSource = ref.watch(homeApiDataSourceProvider);
  return HomeRepositoryImpl(apiDataSource: apiDataSource);
}

// Use Case Provider
@riverpod
GetUserStatsUseCase getUserStatsUseCase(Ref ref) {
  final homeRepository = ref.watch(homeRepositoryProvider);
  return GetUserStatsUseCase(homeRepository);
}

// Provider para obtener las estadísticas del usuario
@riverpod
Future<UserStatsEntityResponse> userStats(Ref ref) async {
  final getUserStatsUseCase = ref.watch(getUserStatsUseCaseProvider);
  final result = await getUserStatsUseCase();

  return result.fold((failure) {
    // Log del error para debugging
    throw Exception(failure.message);
  }, (success) => success);
}
