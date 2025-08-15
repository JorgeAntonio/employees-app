// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmployeesResponseModel _$EmployeesResponseModelFromJson(
  Map<String, dynamic> json,
) => _EmployeesResponseModel(
  success: json['success'] as bool,
  data: json['data'] == null
      ? null
      : EmployeesDataModel.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$EmployeesResponseModelToJson(
  _EmployeesResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data,
  'message': instance.message,
};

_EmployeesDataModel _$EmployeesDataModelFromJson(Map<String, dynamic> json) =>
    _EmployeesDataModel(
      employees: (json['employees'] as List<dynamic>)
          .map((e) => EmployeeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationInfoModel.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$EmployeesDataModelToJson(_EmployeesDataModel instance) =>
    <String, dynamic>{
      'employees': instance.employees,
      'pagination': instance.pagination,
    };

_EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    _EmployeeModel(
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
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      shift: json['shift'] == null
          ? null
          : ShiftModel.fromJson(json['shift'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeModelToJson(_EmployeeModel instance) =>
    <String, dynamic>{
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
      'user': instance.user,
      'shift': instance.shift,
    };

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_ShiftModel _$ShiftModelFromJson(Map<String, dynamic> json) => _ShiftModel(
  id: json['id'] as String,
  name: json['name'] as String,
  startTime: json['startTime'] as String,
  endTime: json['endTime'] as String,
);

Map<String, dynamic> _$ShiftModelToJson(_ShiftModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
