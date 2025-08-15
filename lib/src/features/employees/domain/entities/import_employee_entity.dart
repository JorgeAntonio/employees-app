import 'package:freezed_annotation/freezed_annotation.dart';

part 'import_employee_entity.freezed.dart';

@freezed
abstract class ImportEmployeeEntity with _$ImportEmployeeEntity {
  const factory ImportEmployeeEntity({
    required String firstName,
    required String lastName,
    required String dni,
    required String email,
    required String phone,
    required String position,
    required String department,
    required String shiftName,
  }) = _ImportEmployeeEntity;
}