import 'package:attendance_app/src/core/core.dart';
import 'package:attendance_app/src/features/shift/domain/entities/shift.dart';

abstract class ShiftDataSource {
  FutureEither<ShiftData> getShifts({required int page, required int limit});
}