import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/shift/data/datasources/api/shift_datasource_impl.dart';
import 'package:attendance_app/src/features/shift/domain/entities/shift.dart';
import 'package:attendance_app/src/features/shift/domain/repository/shift_repository.dart';

class ShiftRepositoryImpl implements ShiftRepository {
  final ShiftDataSourceImpl _apiDataSource;

  ShiftRepositoryImpl({required ShiftDataSourceImpl apiDataSource})
      : _apiDataSource = apiDataSource;

  @override
  FutureEither<ShiftData> getShifts({required int page, required int limit}) async {
    return await _apiDataSource.getShifts(page: page, limit: limit);
  }
}