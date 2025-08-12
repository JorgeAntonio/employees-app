import 'package:attendance_app/src/features/attendance/domain/entities/qr_code_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code_data_model.freezed.dart';
part 'qr_code_data_model.g.dart';

@freezed
abstract class EmployeeDataModel with _$EmployeeDataModel {
  const factory EmployeeDataModel({
    required String id,
    required String firstName,
    required String lastName,
    required String dni,
    required String position,
    required String department,
  }) = _EmployeeDataModel;

  factory EmployeeDataModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDataModelFromJson(json);
}

@freezed
abstract class QrCodeDataModel with _$QrCodeDataModel {
  const factory QrCodeDataModel({
    required String qrCode,
    required String manualCode,
    required EmployeeDataModel employeeData,
    required DateTime expiresAt,
  }) = _QrCodeDataModel;

  factory QrCodeDataModel.fromJson(Map<String, dynamic> json) =>
      _$QrCodeDataModelFromJson(json);
}

extension QrCodeDataModelX on QrCodeDataModel {
  QrCodeData toDomain() => QrCodeData(
        qrCode: qrCode,
        manualCode: manualCode,
        expiresAt: expiresAt,
        type: 'checkin',
      );
}