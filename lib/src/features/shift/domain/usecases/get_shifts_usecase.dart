import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/shift/domain/entities/shift.dart';
import 'package:attendance_app/src/features/shift/domain/repository/shift_repository.dart';

class GetShiftsUseCase {
  final ShiftRepository _repository;

  GetShiftsUseCase({required ShiftRepository repository})
      : _repository = repository;

  FutureEither<ShiftData> call({int page = 1, int limit = 10}) async {
    return await _repository.getShifts(page: page, limit: limit);
  }
}