// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_attendance_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmAttendanceResponseModel {

 bool get success; ConfirmAttendanceDataModel? get data; String? get message;
/// Create a copy of ConfirmAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmAttendanceResponseModelCopyWith<ConfirmAttendanceResponseModel> get copyWith => _$ConfirmAttendanceResponseModelCopyWithImpl<ConfirmAttendanceResponseModel>(this as ConfirmAttendanceResponseModel, _$identity);

  /// Serializes this ConfirmAttendanceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmAttendanceResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'ConfirmAttendanceResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $ConfirmAttendanceResponseModelCopyWith<$Res>  {
  factory $ConfirmAttendanceResponseModelCopyWith(ConfirmAttendanceResponseModel value, $Res Function(ConfirmAttendanceResponseModel) _then) = _$ConfirmAttendanceResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, ConfirmAttendanceDataModel? data, String? message
});


$ConfirmAttendanceDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$ConfirmAttendanceResponseModelCopyWithImpl<$Res>
    implements $ConfirmAttendanceResponseModelCopyWith<$Res> {
  _$ConfirmAttendanceResponseModelCopyWithImpl(this._self, this._then);

  final ConfirmAttendanceResponseModel _self;
  final $Res Function(ConfirmAttendanceResponseModel) _then;

/// Create a copy of ConfirmAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ConfirmAttendanceDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ConfirmAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfirmAttendanceDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ConfirmAttendanceDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConfirmAttendanceResponseModel].
extension ConfirmAttendanceResponseModelPatterns on ConfirmAttendanceResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmAttendanceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmAttendanceResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmAttendanceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmAttendanceResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmAttendanceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmAttendanceResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ConfirmAttendanceDataModel? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmAttendanceResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ConfirmAttendanceDataModel? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ConfirmAttendanceResponseModel():
return $default(_that.success,_that.data,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ConfirmAttendanceDataModel? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmAttendanceResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmAttendanceResponseModel implements ConfirmAttendanceResponseModel {
  const _ConfirmAttendanceResponseModel({required this.success, this.data, this.message});
  factory _ConfirmAttendanceResponseModel.fromJson(Map<String, dynamic> json) => _$ConfirmAttendanceResponseModelFromJson(json);

@override final  bool success;
@override final  ConfirmAttendanceDataModel? data;
@override final  String? message;

/// Create a copy of ConfirmAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmAttendanceResponseModelCopyWith<_ConfirmAttendanceResponseModel> get copyWith => __$ConfirmAttendanceResponseModelCopyWithImpl<_ConfirmAttendanceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmAttendanceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmAttendanceResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'ConfirmAttendanceResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ConfirmAttendanceResponseModelCopyWith<$Res> implements $ConfirmAttendanceResponseModelCopyWith<$Res> {
  factory _$ConfirmAttendanceResponseModelCopyWith(_ConfirmAttendanceResponseModel value, $Res Function(_ConfirmAttendanceResponseModel) _then) = __$ConfirmAttendanceResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, ConfirmAttendanceDataModel? data, String? message
});


@override $ConfirmAttendanceDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$ConfirmAttendanceResponseModelCopyWithImpl<$Res>
    implements _$ConfirmAttendanceResponseModelCopyWith<$Res> {
  __$ConfirmAttendanceResponseModelCopyWithImpl(this._self, this._then);

  final _ConfirmAttendanceResponseModel _self;
  final $Res Function(_ConfirmAttendanceResponseModel) _then;

/// Create a copy of ConfirmAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_ConfirmAttendanceResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ConfirmAttendanceDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ConfirmAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfirmAttendanceDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ConfirmAttendanceDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ConfirmAttendanceDataModel {

 String get message; AttendanceModel get attendance;
/// Create a copy of ConfirmAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmAttendanceDataModelCopyWith<ConfirmAttendanceDataModel> get copyWith => _$ConfirmAttendanceDataModelCopyWithImpl<ConfirmAttendanceDataModel>(this as ConfirmAttendanceDataModel, _$identity);

  /// Serializes this ConfirmAttendanceDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmAttendanceDataModel&&(identical(other.message, message) || other.message == message)&&(identical(other.attendance, attendance) || other.attendance == attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,attendance);

@override
String toString() {
  return 'ConfirmAttendanceDataModel(message: $message, attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class $ConfirmAttendanceDataModelCopyWith<$Res>  {
  factory $ConfirmAttendanceDataModelCopyWith(ConfirmAttendanceDataModel value, $Res Function(ConfirmAttendanceDataModel) _then) = _$ConfirmAttendanceDataModelCopyWithImpl;
@useResult
$Res call({
 String message, AttendanceModel attendance
});


$AttendanceModelCopyWith<$Res> get attendance;

}
/// @nodoc
class _$ConfirmAttendanceDataModelCopyWithImpl<$Res>
    implements $ConfirmAttendanceDataModelCopyWith<$Res> {
  _$ConfirmAttendanceDataModelCopyWithImpl(this._self, this._then);

  final ConfirmAttendanceDataModel _self;
  final $Res Function(ConfirmAttendanceDataModel) _then;

/// Create a copy of ConfirmAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? attendance = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceModel,
  ));
}
/// Create a copy of ConfirmAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<$Res> get attendance {
  
  return $AttendanceModelCopyWith<$Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConfirmAttendanceDataModel].
extension ConfirmAttendanceDataModelPatterns on ConfirmAttendanceDataModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmAttendanceDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmAttendanceDataModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmAttendanceDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmAttendanceDataModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmAttendanceDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmAttendanceDataModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  AttendanceModel attendance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmAttendanceDataModel() when $default != null:
return $default(_that.message,_that.attendance);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  AttendanceModel attendance)  $default,) {final _that = this;
switch (_that) {
case _ConfirmAttendanceDataModel():
return $default(_that.message,_that.attendance);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  AttendanceModel attendance)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmAttendanceDataModel() when $default != null:
return $default(_that.message,_that.attendance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmAttendanceDataModel implements ConfirmAttendanceDataModel {
  const _ConfirmAttendanceDataModel({required this.message, required this.attendance});
  factory _ConfirmAttendanceDataModel.fromJson(Map<String, dynamic> json) => _$ConfirmAttendanceDataModelFromJson(json);

@override final  String message;
@override final  AttendanceModel attendance;

/// Create a copy of ConfirmAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmAttendanceDataModelCopyWith<_ConfirmAttendanceDataModel> get copyWith => __$ConfirmAttendanceDataModelCopyWithImpl<_ConfirmAttendanceDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmAttendanceDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmAttendanceDataModel&&(identical(other.message, message) || other.message == message)&&(identical(other.attendance, attendance) || other.attendance == attendance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,attendance);

@override
String toString() {
  return 'ConfirmAttendanceDataModel(message: $message, attendance: $attendance)';
}


}

/// @nodoc
abstract mixin class _$ConfirmAttendanceDataModelCopyWith<$Res> implements $ConfirmAttendanceDataModelCopyWith<$Res> {
  factory _$ConfirmAttendanceDataModelCopyWith(_ConfirmAttendanceDataModel value, $Res Function(_ConfirmAttendanceDataModel) _then) = __$ConfirmAttendanceDataModelCopyWithImpl;
@override @useResult
$Res call({
 String message, AttendanceModel attendance
});


@override $AttendanceModelCopyWith<$Res> get attendance;

}
/// @nodoc
class __$ConfirmAttendanceDataModelCopyWithImpl<$Res>
    implements _$ConfirmAttendanceDataModelCopyWith<$Res> {
  __$ConfirmAttendanceDataModelCopyWithImpl(this._self, this._then);

  final _ConfirmAttendanceDataModel _self;
  final $Res Function(_ConfirmAttendanceDataModel) _then;

/// Create a copy of ConfirmAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? attendance = null,}) {
  return _then(_ConfirmAttendanceDataModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceModel,
  ));
}

/// Create a copy of ConfirmAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<$Res> get attendance {
  
  return $AttendanceModelCopyWith<$Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// @nodoc
mixin _$AttendanceModel {

 String get id; String get employeeId; DateTime get date; DateTime? get checkInTime; DateTime? get checkOutTime; int get durationMins; String get status; String? get checkInLocationId; String? get checkOutLocationId; String? get deviceId; DateTime get createdAt; DateTime get updatedAt; AttendanceEmployeeModel get employee; AttendanceLocationModel? get checkInLocation; AttendanceLocationModel? get checkOutLocation; AttendanceDeviceModel? get device;
/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<AttendanceModel> get copyWith => _$AttendanceModelCopyWithImpl<AttendanceModel>(this as AttendanceModel, _$identity);

  /// Serializes this AttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins)&&(identical(other.status, status) || other.status == status)&&(identical(other.checkInLocationId, checkInLocationId) || other.checkInLocationId == checkInLocationId)&&(identical(other.checkOutLocationId, checkOutLocationId) || other.checkOutLocationId == checkOutLocationId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.device, device) || other.device == device));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,date,checkInTime,checkOutTime,durationMins,status,checkInLocationId,checkOutLocationId,deviceId,createdAt,updatedAt,employee,checkInLocation,checkOutLocation,device);

@override
String toString() {
  return 'AttendanceModel(id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, durationMins: $durationMins, status: $status, checkInLocationId: $checkInLocationId, checkOutLocationId: $checkOutLocationId, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt, employee: $employee, checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, device: $device)';
}


}

/// @nodoc
abstract mixin class $AttendanceModelCopyWith<$Res>  {
  factory $AttendanceModelCopyWith(AttendanceModel value, $Res Function(AttendanceModel) _then) = _$AttendanceModelCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, DateTime date, DateTime? checkInTime, DateTime? checkOutTime, int durationMins, String status, String? checkInLocationId, String? checkOutLocationId, String? deviceId, DateTime createdAt, DateTime updatedAt, AttendanceEmployeeModel employee, AttendanceLocationModel? checkInLocation, AttendanceLocationModel? checkOutLocation, AttendanceDeviceModel? device
});


$AttendanceEmployeeModelCopyWith<$Res> get employee;$AttendanceLocationModelCopyWith<$Res>? get checkInLocation;$AttendanceLocationModelCopyWith<$Res>? get checkOutLocation;$AttendanceDeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._self, this._then);

  final AttendanceModel _self;
  final $Res Function(AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? date = null,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? durationMins = null,Object? status = null,Object? checkInLocationId = freezed,Object? checkOutLocationId = freezed,Object? deviceId = freezed,Object? createdAt = null,Object? updatedAt = null,Object? employee = null,Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? device = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,durationMins: null == durationMins ? _self.durationMins : durationMins // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,checkInLocationId: freezed == checkInLocationId ? _self.checkInLocationId : checkInLocationId // ignore: cast_nullable_to_non_nullable
as String?,checkOutLocationId: freezed == checkOutLocationId ? _self.checkOutLocationId : checkOutLocationId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as AttendanceEmployeeModel,checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as AttendanceLocationModel?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as AttendanceLocationModel?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDeviceModel?,
  ));
}
/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceEmployeeModelCopyWith<$Res> get employee {
  
  return $AttendanceEmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $AttendanceLocationModelCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $AttendanceLocationModelCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
  });
}/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceModel].
extension AttendanceModelPatterns on AttendanceModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt,  AttendanceEmployeeModel employee,  AttendanceLocationModel? checkInLocation,  AttendanceLocationModel? checkOutLocation,  AttendanceDeviceModel? device)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.durationMins,_that.status,_that.checkInLocationId,_that.checkOutLocationId,_that.deviceId,_that.createdAt,_that.updatedAt,_that.employee,_that.checkInLocation,_that.checkOutLocation,_that.device);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt,  AttendanceEmployeeModel employee,  AttendanceLocationModel? checkInLocation,  AttendanceLocationModel? checkOutLocation,  AttendanceDeviceModel? device)  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel():
return $default(_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.durationMins,_that.status,_that.checkInLocationId,_that.checkOutLocationId,_that.deviceId,_that.createdAt,_that.updatedAt,_that.employee,_that.checkInLocation,_that.checkOutLocation,_that.device);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt,  AttendanceEmployeeModel employee,  AttendanceLocationModel? checkInLocation,  AttendanceLocationModel? checkOutLocation,  AttendanceDeviceModel? device)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.durationMins,_that.status,_that.checkInLocationId,_that.checkOutLocationId,_that.deviceId,_that.createdAt,_that.updatedAt,_that.employee,_that.checkInLocation,_that.checkOutLocation,_that.device);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceModel implements AttendanceModel {
  const _AttendanceModel({required this.id, required this.employeeId, required this.date, this.checkInTime, this.checkOutTime, required this.durationMins, required this.status, this.checkInLocationId, this.checkOutLocationId, this.deviceId, required this.createdAt, required this.updatedAt, required this.employee, this.checkInLocation, this.checkOutLocation, this.device});
  factory _AttendanceModel.fromJson(Map<String, dynamic> json) => _$AttendanceModelFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  DateTime date;
@override final  DateTime? checkInTime;
@override final  DateTime? checkOutTime;
@override final  int durationMins;
@override final  String status;
@override final  String? checkInLocationId;
@override final  String? checkOutLocationId;
@override final  String? deviceId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  AttendanceEmployeeModel employee;
@override final  AttendanceLocationModel? checkInLocation;
@override final  AttendanceLocationModel? checkOutLocation;
@override final  AttendanceDeviceModel? device;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceModelCopyWith<_AttendanceModel> get copyWith => __$AttendanceModelCopyWithImpl<_AttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins)&&(identical(other.status, status) || other.status == status)&&(identical(other.checkInLocationId, checkInLocationId) || other.checkInLocationId == checkInLocationId)&&(identical(other.checkOutLocationId, checkOutLocationId) || other.checkOutLocationId == checkOutLocationId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.device, device) || other.device == device));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,date,checkInTime,checkOutTime,durationMins,status,checkInLocationId,checkOutLocationId,deviceId,createdAt,updatedAt,employee,checkInLocation,checkOutLocation,device);

@override
String toString() {
  return 'AttendanceModel(id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, durationMins: $durationMins, status: $status, checkInLocationId: $checkInLocationId, checkOutLocationId: $checkOutLocationId, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt, employee: $employee, checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, device: $device)';
}


}

/// @nodoc
abstract mixin class _$AttendanceModelCopyWith<$Res> implements $AttendanceModelCopyWith<$Res> {
  factory _$AttendanceModelCopyWith(_AttendanceModel value, $Res Function(_AttendanceModel) _then) = __$AttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, DateTime date, DateTime? checkInTime, DateTime? checkOutTime, int durationMins, String status, String? checkInLocationId, String? checkOutLocationId, String? deviceId, DateTime createdAt, DateTime updatedAt, AttendanceEmployeeModel employee, AttendanceLocationModel? checkInLocation, AttendanceLocationModel? checkOutLocation, AttendanceDeviceModel? device
});


@override $AttendanceEmployeeModelCopyWith<$Res> get employee;@override $AttendanceLocationModelCopyWith<$Res>? get checkInLocation;@override $AttendanceLocationModelCopyWith<$Res>? get checkOutLocation;@override $AttendanceDeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class __$AttendanceModelCopyWithImpl<$Res>
    implements _$AttendanceModelCopyWith<$Res> {
  __$AttendanceModelCopyWithImpl(this._self, this._then);

  final _AttendanceModel _self;
  final $Res Function(_AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? date = null,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? durationMins = null,Object? status = null,Object? checkInLocationId = freezed,Object? checkOutLocationId = freezed,Object? deviceId = freezed,Object? createdAt = null,Object? updatedAt = null,Object? employee = null,Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? device = freezed,}) {
  return _then(_AttendanceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,durationMins: null == durationMins ? _self.durationMins : durationMins // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,checkInLocationId: freezed == checkInLocationId ? _self.checkInLocationId : checkInLocationId // ignore: cast_nullable_to_non_nullable
as String?,checkOutLocationId: freezed == checkOutLocationId ? _self.checkOutLocationId : checkOutLocationId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as AttendanceEmployeeModel,checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as AttendanceLocationModel?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as AttendanceLocationModel?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDeviceModel?,
  ));
}

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceEmployeeModelCopyWith<$Res> get employee {
  
  return $AttendanceEmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $AttendanceLocationModelCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $AttendanceLocationModelCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
  });
}/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// @nodoc
mixin _$AttendanceEmployeeModel {

 String get firstName; String get lastName; String get dni;
/// Create a copy of AttendanceEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceEmployeeModelCopyWith<AttendanceEmployeeModel> get copyWith => _$AttendanceEmployeeModelCopyWithImpl<AttendanceEmployeeModel>(this as AttendanceEmployeeModel, _$identity);

  /// Serializes this AttendanceEmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceEmployeeModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,dni);

@override
String toString() {
  return 'AttendanceEmployeeModel(firstName: $firstName, lastName: $lastName, dni: $dni)';
}


}

/// @nodoc
abstract mixin class $AttendanceEmployeeModelCopyWith<$Res>  {
  factory $AttendanceEmployeeModelCopyWith(AttendanceEmployeeModel value, $Res Function(AttendanceEmployeeModel) _then) = _$AttendanceEmployeeModelCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String dni
});




}
/// @nodoc
class _$AttendanceEmployeeModelCopyWithImpl<$Res>
    implements $AttendanceEmployeeModelCopyWith<$Res> {
  _$AttendanceEmployeeModelCopyWithImpl(this._self, this._then);

  final AttendanceEmployeeModel _self;
  final $Res Function(AttendanceEmployeeModel) _then;

/// Create a copy of AttendanceEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? dni = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceEmployeeModel].
extension AttendanceEmployeeModelPatterns on AttendanceEmployeeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceEmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceEmployeeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceEmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceEmployeeModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceEmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceEmployeeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String dni)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceEmployeeModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.dni);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String dni)  $default,) {final _that = this;
switch (_that) {
case _AttendanceEmployeeModel():
return $default(_that.firstName,_that.lastName,_that.dni);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String dni)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceEmployeeModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.dni);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceEmployeeModel implements AttendanceEmployeeModel {
  const _AttendanceEmployeeModel({required this.firstName, required this.lastName, required this.dni});
  factory _AttendanceEmployeeModel.fromJson(Map<String, dynamic> json) => _$AttendanceEmployeeModelFromJson(json);

@override final  String firstName;
@override final  String lastName;
@override final  String dni;

/// Create a copy of AttendanceEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceEmployeeModelCopyWith<_AttendanceEmployeeModel> get copyWith => __$AttendanceEmployeeModelCopyWithImpl<_AttendanceEmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceEmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceEmployeeModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,dni);

@override
String toString() {
  return 'AttendanceEmployeeModel(firstName: $firstName, lastName: $lastName, dni: $dni)';
}


}

/// @nodoc
abstract mixin class _$AttendanceEmployeeModelCopyWith<$Res> implements $AttendanceEmployeeModelCopyWith<$Res> {
  factory _$AttendanceEmployeeModelCopyWith(_AttendanceEmployeeModel value, $Res Function(_AttendanceEmployeeModel) _then) = __$AttendanceEmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String dni
});




}
/// @nodoc
class __$AttendanceEmployeeModelCopyWithImpl<$Res>
    implements _$AttendanceEmployeeModelCopyWith<$Res> {
  __$AttendanceEmployeeModelCopyWithImpl(this._self, this._then);

  final _AttendanceEmployeeModel _self;
  final $Res Function(_AttendanceEmployeeModel) _then;

/// Create a copy of AttendanceEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? dni = null,}) {
  return _then(_AttendanceEmployeeModel(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttendanceLocationModel {

 String get id; String get name; double? get latitude; double? get longitude; double? get accuracy;
/// Create a copy of AttendanceLocationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<AttendanceLocationModel> get copyWith => _$AttendanceLocationModelCopyWithImpl<AttendanceLocationModel>(this as AttendanceLocationModel, _$identity);

  /// Serializes this AttendanceLocationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLocationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceLocationModel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class $AttendanceLocationModelCopyWith<$Res>  {
  factory $AttendanceLocationModelCopyWith(AttendanceLocationModel value, $Res Function(AttendanceLocationModel) _then) = _$AttendanceLocationModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class _$AttendanceLocationModelCopyWithImpl<$Res>
    implements $AttendanceLocationModelCopyWith<$Res> {
  _$AttendanceLocationModelCopyWithImpl(this._self, this._then);

  final AttendanceLocationModel _self;
  final $Res Function(AttendanceLocationModel) _then;

/// Create a copy of AttendanceLocationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceLocationModel].
extension AttendanceLocationModelPatterns on AttendanceLocationModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceLocationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceLocationModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceLocationModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceLocationModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceLocationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceLocationModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double? latitude,  double? longitude,  double? accuracy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceLocationModel() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.accuracy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double? latitude,  double? longitude,  double? accuracy)  $default,) {final _that = this;
switch (_that) {
case _AttendanceLocationModel():
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.accuracy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double? latitude,  double? longitude,  double? accuracy)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceLocationModel() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.accuracy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceLocationModel implements AttendanceLocationModel {
  const _AttendanceLocationModel({required this.id, required this.name, this.latitude, this.longitude, this.accuracy});
  factory _AttendanceLocationModel.fromJson(Map<String, dynamic> json) => _$AttendanceLocationModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;

/// Create a copy of AttendanceLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceLocationModelCopyWith<_AttendanceLocationModel> get copyWith => __$AttendanceLocationModelCopyWithImpl<_AttendanceLocationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceLocationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceLocationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceLocationModel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class _$AttendanceLocationModelCopyWith<$Res> implements $AttendanceLocationModelCopyWith<$Res> {
  factory _$AttendanceLocationModelCopyWith(_AttendanceLocationModel value, $Res Function(_AttendanceLocationModel) _then) = __$AttendanceLocationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class __$AttendanceLocationModelCopyWithImpl<$Res>
    implements _$AttendanceLocationModelCopyWith<$Res> {
  __$AttendanceLocationModelCopyWithImpl(this._self, this._then);

  final _AttendanceLocationModel _self;
  final $Res Function(_AttendanceLocationModel) _then;

/// Create a copy of AttendanceLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_AttendanceLocationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$AttendanceDeviceModel {

 String get id; String get name; String get os; String get browser; String get userAgent;
/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceDeviceModelCopyWith<AttendanceDeviceModel> get copyWith => _$AttendanceDeviceModelCopyWithImpl<AttendanceDeviceModel>(this as AttendanceDeviceModel, _$identity);

  /// Serializes this AttendanceDeviceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceDeviceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.os, os) || other.os == os)&&(identical(other.browser, browser) || other.browser == browser)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,os,browser,userAgent);

@override
String toString() {
  return 'AttendanceDeviceModel(id: $id, name: $name, os: $os, browser: $browser, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class $AttendanceDeviceModelCopyWith<$Res>  {
  factory $AttendanceDeviceModelCopyWith(AttendanceDeviceModel value, $Res Function(AttendanceDeviceModel) _then) = _$AttendanceDeviceModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String os, String browser, String userAgent
});




}
/// @nodoc
class _$AttendanceDeviceModelCopyWithImpl<$Res>
    implements $AttendanceDeviceModelCopyWith<$Res> {
  _$AttendanceDeviceModelCopyWithImpl(this._self, this._then);

  final AttendanceDeviceModel _self;
  final $Res Function(AttendanceDeviceModel) _then;

/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? os = null,Object? browser = null,Object? userAgent = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,os: null == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String,browser: null == browser ? _self.browser : browser // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceDeviceModel].
extension AttendanceDeviceModelPatterns on AttendanceDeviceModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceDeviceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceDeviceModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceDeviceModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceDeviceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String os,  String browser,  String userAgent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
return $default(_that.id,_that.name,_that.os,_that.browser,_that.userAgent);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String os,  String browser,  String userAgent)  $default,) {final _that = this;
switch (_that) {
case _AttendanceDeviceModel():
return $default(_that.id,_that.name,_that.os,_that.browser,_that.userAgent);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String os,  String browser,  String userAgent)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
return $default(_that.id,_that.name,_that.os,_that.browser,_that.userAgent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceDeviceModel implements AttendanceDeviceModel {
  const _AttendanceDeviceModel({required this.id, required this.name, required this.os, required this.browser, required this.userAgent});
  factory _AttendanceDeviceModel.fromJson(Map<String, dynamic> json) => _$AttendanceDeviceModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String os;
@override final  String browser;
@override final  String userAgent;

/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceDeviceModelCopyWith<_AttendanceDeviceModel> get copyWith => __$AttendanceDeviceModelCopyWithImpl<_AttendanceDeviceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceDeviceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceDeviceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.os, os) || other.os == os)&&(identical(other.browser, browser) || other.browser == browser)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,os,browser,userAgent);

@override
String toString() {
  return 'AttendanceDeviceModel(id: $id, name: $name, os: $os, browser: $browser, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class _$AttendanceDeviceModelCopyWith<$Res> implements $AttendanceDeviceModelCopyWith<$Res> {
  factory _$AttendanceDeviceModelCopyWith(_AttendanceDeviceModel value, $Res Function(_AttendanceDeviceModel) _then) = __$AttendanceDeviceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String os, String browser, String userAgent
});




}
/// @nodoc
class __$AttendanceDeviceModelCopyWithImpl<$Res>
    implements _$AttendanceDeviceModelCopyWith<$Res> {
  __$AttendanceDeviceModelCopyWithImpl(this._self, this._then);

  final _AttendanceDeviceModel _self;
  final $Res Function(_AttendanceDeviceModel) _then;

/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? os = null,Object? browser = null,Object? userAgent = null,}) {
  return _then(_AttendanceDeviceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,os: null == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String,browser: null == browser ? _self.browser : browser // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
