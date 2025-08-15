import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/import_employee_entity.dart';

part 'import_employee_model.freezed.dart';
part 'import_employee_model.g.dart';

@freezed
abstract class ImportEmployeeModel with _$ImportEmployeeModel {
  const factory ImportEmployeeModel({
    required String firstName,
    required String lastName,
    required String dni,
    required String email,
    required String phone,
    required String position,
    required String department,
    required String shiftName,
  }) = _ImportEmployeeModel;

  factory ImportEmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$ImportEmployeeModelFromJson(json);

  factory ImportEmployeeModel.fromCsvRow(List<String> row) {
    return ImportEmployeeModel(
      firstName: row[0].trim(),
      lastName: row[1].trim(),
      dni: row[2].trim(),
      email: row[3].trim(),
      phone: row[4].trim(),
      position: row[5].trim(),
      department: row[6].trim(),
      shiftName: row[7].trim(),
    );
  }
}

extension ImportEmployeeModelX on ImportEmployeeModel {
  ImportEmployeeEntity toDomain() {
    return ImportEmployeeEntity(
      firstName: firstName,
      lastName: lastName,
      dni: dni,
      email: email,
      phone: phone,
      position: position,
      department: department,
      shiftName: shiftName,
    );
  }

  Map<String, dynamic> toFormData() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'dni': dni,
      'email': email,
      'phone': phone,
      'position': position,
      'department': department,
      'shiftName': shiftName,
    };
  }
}