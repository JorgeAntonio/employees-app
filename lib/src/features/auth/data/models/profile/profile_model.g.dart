// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponseModel _$ProfileResponseModelFromJson(
  Map<String, dynamic> json,
) => _ProfileResponseModel(
  success: json['success'] as bool,
  data: ProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$ProfileResponseModelToJson(
  _ProfileResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_ProfileDataModel _$ProfileDataModelFromJson(Map<String, dynamic> json) =>
    _ProfileDataModel(
      id: json['id'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      employee: json['employee'] == null
          ? null
          : EmployeeWithShiftModel.fromJson(
              json['employee'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProfileDataModelToJson(_ProfileDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'employee': instance.employee,
    };

_EmployeeWithShiftModel _$EmployeeWithShiftModelFromJson(
  Map<String, dynamic> json,
) => _EmployeeWithShiftModel(
  id: json['id'] as String,
  userId: json['userId'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dni: json['dni'] as String,
  phone: json['phone'] as String?,
  photoUrl: json['photoUrl'] as String?,
  position: json['position'] as String,
  department: json['department'] as String,
  shiftId: json['shiftId'] as String?,
  shift: json['shift'] == null
      ? null
      : ShiftModel.fromJson(json['shift'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EmployeeWithShiftModelToJson(
  _EmployeeWithShiftModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dni': instance.dni,
  'phone': instance.phone,
  'photoUrl': instance.photoUrl,
  'position': instance.position,
  'department': instance.department,
  'shiftId': instance.shiftId,
  'shift': instance.shift,
};
