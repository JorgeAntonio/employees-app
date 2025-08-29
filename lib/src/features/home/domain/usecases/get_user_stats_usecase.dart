import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/home/domain/entities/user_stats_entity.dart';
import 'package:attendance_app/src/features/home/domain/repository/home_repository.dart';

class GetUserStatsUseCase {
  final HomeRepository _homeRepository;

  GetUserStatsUseCase(this._homeRepository);

  FutureEither<UserStatsEntityResponse> call() async {
    return await _homeRepository.getUserStats();
  }
}
