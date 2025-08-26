import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/home/domain/datasources/api/home_datasource.dart';
import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';
import 'package:attendance_app/src/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource apiDataSource;

  HomeRepositoryImpl({required this.apiDataSource});

  @override
  FutureEither<UserStatsEntityResponse> getUserStats() async {
    return await apiDataSource.getUserStats();
  }
}
