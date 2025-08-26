import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';

abstract class HomeRepository {
  FutureEither<UserStatsEntityResponse> getUserStats();
}
