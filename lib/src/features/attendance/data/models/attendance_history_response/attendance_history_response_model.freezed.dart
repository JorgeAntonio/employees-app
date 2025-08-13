// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceHistoryResponseModel {

 bool get success; AttendanceHistoryDataModel? get data; String? get message;
/// Create a copy of AttendanceHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryResponseModelCopyWith<AttendanceHistoryResponseModel> get copyWith => _$AttendanceHistoryResponseModelCopyWithImpl<AttendanceHistoryResponseModel>(this as AttendanceHistoryResponseModel, _$identity);

  /// Serializes this AttendanceHistoryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'AttendanceHistoryResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryResponseModelCopyWith<$Res>  {
  factory $AttendanceHistoryResponseModelCopyWith(AttendanceHistoryResponseModel value, $Res Function(AttendanceHistoryResponseModel) _then) = _$AttendanceHistoryResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, AttendanceHistoryDataModel? data, String? message
});


$AttendanceHistoryDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$AttendanceHistoryResponseModelCopyWithImpl<$Res>
    implements $AttendanceHistoryResponseModelCopyWith<$Res> {
  _$AttendanceHistoryResponseModelCopyWithImpl(this._self, this._then);

  final AttendanceHistoryResponseModel _self;
  final $Res Function(AttendanceHistoryResponseModel) _then;

/// Create a copy of AttendanceHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AttendanceHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AttendanceHistoryDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceHistoryResponseModel].
extension AttendanceHistoryResponseModelPatterns on AttendanceHistoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  AttendanceHistoryDataModel? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  AttendanceHistoryDataModel? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  AttendanceHistoryDataModel? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryResponseModel implements AttendanceHistoryResponseModel {
  const _AttendanceHistoryResponseModel({required this.success, this.data, this.message});
  factory _AttendanceHistoryResponseModel.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryResponseModelFromJson(json);

@override final  bool success;
@override final  AttendanceHistoryDataModel? data;
@override final  String? message;

/// Create a copy of AttendanceHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryResponseModelCopyWith<_AttendanceHistoryResponseModel> get copyWith => __$AttendanceHistoryResponseModelCopyWithImpl<_AttendanceHistoryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'AttendanceHistoryResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryResponseModelCopyWith<$Res> implements $AttendanceHistoryResponseModelCopyWith<$Res> {
  factory _$AttendanceHistoryResponseModelCopyWith(_AttendanceHistoryResponseModel value, $Res Function(_AttendanceHistoryResponseModel) _then) = __$AttendanceHistoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, AttendanceHistoryDataModel? data, String? message
});


@override $AttendanceHistoryDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$AttendanceHistoryResponseModelCopyWithImpl<$Res>
    implements _$AttendanceHistoryResponseModelCopyWith<$Res> {
  __$AttendanceHistoryResponseModelCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryResponseModel _self;
  final $Res Function(_AttendanceHistoryResponseModel) _then;

/// Create a copy of AttendanceHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_AttendanceHistoryResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AttendanceHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AttendanceHistoryDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AttendanceHistoryDataModel {

 List<AttendanceHistoryItemModel> get attendances; PaginationInfoModel get pagination;
/// Create a copy of AttendanceHistoryDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryDataModelCopyWith<AttendanceHistoryDataModel> get copyWith => _$AttendanceHistoryDataModelCopyWithImpl<AttendanceHistoryDataModel>(this as AttendanceHistoryDataModel, _$identity);

  /// Serializes this AttendanceHistoryDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryDataModel&&const DeepCollectionEquality().equals(other.attendances, attendances)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(attendances),pagination);

@override
String toString() {
  return 'AttendanceHistoryDataModel(attendances: $attendances, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryDataModelCopyWith<$Res>  {
  factory $AttendanceHistoryDataModelCopyWith(AttendanceHistoryDataModel value, $Res Function(AttendanceHistoryDataModel) _then) = _$AttendanceHistoryDataModelCopyWithImpl;
@useResult
$Res call({
 List<AttendanceHistoryItemModel> attendances, PaginationInfoModel pagination
});


$PaginationInfoModelCopyWith<$Res> get pagination;

}
/// @nodoc
class _$AttendanceHistoryDataModelCopyWithImpl<$Res>
    implements $AttendanceHistoryDataModelCopyWith<$Res> {
  _$AttendanceHistoryDataModelCopyWithImpl(this._self, this._then);

  final AttendanceHistoryDataModel _self;
  final $Res Function(AttendanceHistoryDataModel) _then;

/// Create a copy of AttendanceHistoryDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attendances = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
attendances: null == attendances ? _self.attendances : attendances // ignore: cast_nullable_to_non_nullable
as List<AttendanceHistoryItemModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationInfoModel,
  ));
}
/// Create a copy of AttendanceHistoryDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationInfoModelCopyWith<$Res> get pagination {
  
  return $PaginationInfoModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceHistoryDataModel].
extension AttendanceHistoryDataModelPatterns on AttendanceHistoryDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryDataModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AttendanceHistoryItemModel> attendances,  PaginationInfoModel pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryDataModel() when $default != null:
return $default(_that.attendances,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AttendanceHistoryItemModel> attendances,  PaginationInfoModel pagination)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryDataModel():
return $default(_that.attendances,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AttendanceHistoryItemModel> attendances,  PaginationInfoModel pagination)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryDataModel() when $default != null:
return $default(_that.attendances,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryDataModel implements AttendanceHistoryDataModel {
  const _AttendanceHistoryDataModel({required final  List<AttendanceHistoryItemModel> attendances, required this.pagination}): _attendances = attendances;
  factory _AttendanceHistoryDataModel.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryDataModelFromJson(json);

 final  List<AttendanceHistoryItemModel> _attendances;
@override List<AttendanceHistoryItemModel> get attendances {
  if (_attendances is EqualUnmodifiableListView) return _attendances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attendances);
}

@override final  PaginationInfoModel pagination;

/// Create a copy of AttendanceHistoryDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryDataModelCopyWith<_AttendanceHistoryDataModel> get copyWith => __$AttendanceHistoryDataModelCopyWithImpl<_AttendanceHistoryDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryDataModel&&const DeepCollectionEquality().equals(other._attendances, _attendances)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_attendances),pagination);

@override
String toString() {
  return 'AttendanceHistoryDataModel(attendances: $attendances, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryDataModelCopyWith<$Res> implements $AttendanceHistoryDataModelCopyWith<$Res> {
  factory _$AttendanceHistoryDataModelCopyWith(_AttendanceHistoryDataModel value, $Res Function(_AttendanceHistoryDataModel) _then) = __$AttendanceHistoryDataModelCopyWithImpl;
@override @useResult
$Res call({
 List<AttendanceHistoryItemModel> attendances, PaginationInfoModel pagination
});


@override $PaginationInfoModelCopyWith<$Res> get pagination;

}
/// @nodoc
class __$AttendanceHistoryDataModelCopyWithImpl<$Res>
    implements _$AttendanceHistoryDataModelCopyWith<$Res> {
  __$AttendanceHistoryDataModelCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryDataModel _self;
  final $Res Function(_AttendanceHistoryDataModel) _then;

/// Create a copy of AttendanceHistoryDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attendances = null,Object? pagination = null,}) {
  return _then(_AttendanceHistoryDataModel(
attendances: null == attendances ? _self._attendances : attendances // ignore: cast_nullable_to_non_nullable
as List<AttendanceHistoryItemModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationInfoModel,
  ));
}

/// Create a copy of AttendanceHistoryDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationInfoModelCopyWith<$Res> get pagination {
  
  return $PaginationInfoModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$AttendanceHistoryItemModel {

 String get id; String get employeeId; DateTime get date; DateTime? get checkInTime; DateTime? get checkOutTime; int? get durationMins; String get status; String? get checkInLocationId; String? get checkOutLocationId; String? get deviceId; DateTime get createdAt; DateTime get updatedAt; AttendanceHistoryEmployeeModel get employee; AttendanceHistoryLocationModel? get checkInLocation; AttendanceHistoryLocationModel? get checkOutLocation; AttendanceHistoryDeviceModel? get device;
/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryItemModelCopyWith<AttendanceHistoryItemModel> get copyWith => _$AttendanceHistoryItemModelCopyWithImpl<AttendanceHistoryItemModel>(this as AttendanceHistoryItemModel, _$identity);

  /// Serializes this AttendanceHistoryItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins)&&(identical(other.status, status) || other.status == status)&&(identical(other.checkInLocationId, checkInLocationId) || other.checkInLocationId == checkInLocationId)&&(identical(other.checkOutLocationId, checkOutLocationId) || other.checkOutLocationId == checkOutLocationId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.device, device) || other.device == device));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,date,checkInTime,checkOutTime,durationMins,status,checkInLocationId,checkOutLocationId,deviceId,createdAt,updatedAt,employee,checkInLocation,checkOutLocation,device);

@override
String toString() {
  return 'AttendanceHistoryItemModel(id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, durationMins: $durationMins, status: $status, checkInLocationId: $checkInLocationId, checkOutLocationId: $checkOutLocationId, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt, employee: $employee, checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, device: $device)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryItemModelCopyWith<$Res>  {
  factory $AttendanceHistoryItemModelCopyWith(AttendanceHistoryItemModel value, $Res Function(AttendanceHistoryItemModel) _then) = _$AttendanceHistoryItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, DateTime date, DateTime? checkInTime, DateTime? checkOutTime, int? durationMins, String status, String? checkInLocationId, String? checkOutLocationId, String? deviceId, DateTime createdAt, DateTime updatedAt, AttendanceHistoryEmployeeModel employee, AttendanceHistoryLocationModel? checkInLocation, AttendanceHistoryLocationModel? checkOutLocation, AttendanceHistoryDeviceModel? device
});


$AttendanceHistoryEmployeeModelCopyWith<$Res> get employee;$AttendanceHistoryLocationModelCopyWith<$Res>? get checkInLocation;$AttendanceHistoryLocationModelCopyWith<$Res>? get checkOutLocation;$AttendanceHistoryDeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class _$AttendanceHistoryItemModelCopyWithImpl<$Res>
    implements $AttendanceHistoryItemModelCopyWith<$Res> {
  _$AttendanceHistoryItemModelCopyWithImpl(this._self, this._then);

  final AttendanceHistoryItemModel _self;
  final $Res Function(AttendanceHistoryItemModel) _then;

/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? date = null,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? durationMins = freezed,Object? status = null,Object? checkInLocationId = freezed,Object? checkOutLocationId = freezed,Object? deviceId = freezed,Object? createdAt = null,Object? updatedAt = null,Object? employee = null,Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? device = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,durationMins: freezed == durationMins ? _self.durationMins : durationMins // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,checkInLocationId: freezed == checkInLocationId ? _self.checkInLocationId : checkInLocationId // ignore: cast_nullable_to_non_nullable
as String?,checkOutLocationId: freezed == checkOutLocationId ? _self.checkOutLocationId : checkOutLocationId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryEmployeeModel,checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryLocationModel?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryLocationModel?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryDeviceModel?,
  ));
}
/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryEmployeeModelCopyWith<$Res> get employee {
  
  return $AttendanceHistoryEmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryLocationModelCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $AttendanceHistoryLocationModelCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryLocationModelCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $AttendanceHistoryLocationModelCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
  });
}/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryDeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceHistoryDeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceHistoryItemModel].
extension AttendanceHistoryItemModelPatterns on AttendanceHistoryItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryItemModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int? durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt,  AttendanceHistoryEmployeeModel employee,  AttendanceHistoryLocationModel? checkInLocation,  AttendanceHistoryLocationModel? checkOutLocation,  AttendanceHistoryDeviceModel? device)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryItemModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int? durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt,  AttendanceHistoryEmployeeModel employee,  AttendanceHistoryLocationModel? checkInLocation,  AttendanceHistoryLocationModel? checkOutLocation,  AttendanceHistoryDeviceModel? device)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryItemModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int? durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt,  AttendanceHistoryEmployeeModel employee,  AttendanceHistoryLocationModel? checkInLocation,  AttendanceHistoryLocationModel? checkOutLocation,  AttendanceHistoryDeviceModel? device)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryItemModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.durationMins,_that.status,_that.checkInLocationId,_that.checkOutLocationId,_that.deviceId,_that.createdAt,_that.updatedAt,_that.employee,_that.checkInLocation,_that.checkOutLocation,_that.device);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryItemModel implements AttendanceHistoryItemModel {
  const _AttendanceHistoryItemModel({required this.id, required this.employeeId, required this.date, this.checkInTime, this.checkOutTime, this.durationMins, required this.status, this.checkInLocationId, this.checkOutLocationId, this.deviceId, required this.createdAt, required this.updatedAt, required this.employee, this.checkInLocation, this.checkOutLocation, this.device});
  factory _AttendanceHistoryItemModel.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryItemModelFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  DateTime date;
@override final  DateTime? checkInTime;
@override final  DateTime? checkOutTime;
@override final  int? durationMins;
@override final  String status;
@override final  String? checkInLocationId;
@override final  String? checkOutLocationId;
@override final  String? deviceId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  AttendanceHistoryEmployeeModel employee;
@override final  AttendanceHistoryLocationModel? checkInLocation;
@override final  AttendanceHistoryLocationModel? checkOutLocation;
@override final  AttendanceHistoryDeviceModel? device;

/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryItemModelCopyWith<_AttendanceHistoryItemModel> get copyWith => __$AttendanceHistoryItemModelCopyWithImpl<_AttendanceHistoryItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins)&&(identical(other.status, status) || other.status == status)&&(identical(other.checkInLocationId, checkInLocationId) || other.checkInLocationId == checkInLocationId)&&(identical(other.checkOutLocationId, checkOutLocationId) || other.checkOutLocationId == checkOutLocationId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.checkInLocation, checkInLocation) || other.checkInLocation == checkInLocation)&&(identical(other.checkOutLocation, checkOutLocation) || other.checkOutLocation == checkOutLocation)&&(identical(other.device, device) || other.device == device));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,date,checkInTime,checkOutTime,durationMins,status,checkInLocationId,checkOutLocationId,deviceId,createdAt,updatedAt,employee,checkInLocation,checkOutLocation,device);

@override
String toString() {
  return 'AttendanceHistoryItemModel(id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, durationMins: $durationMins, status: $status, checkInLocationId: $checkInLocationId, checkOutLocationId: $checkOutLocationId, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt, employee: $employee, checkInLocation: $checkInLocation, checkOutLocation: $checkOutLocation, device: $device)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryItemModelCopyWith<$Res> implements $AttendanceHistoryItemModelCopyWith<$Res> {
  factory _$AttendanceHistoryItemModelCopyWith(_AttendanceHistoryItemModel value, $Res Function(_AttendanceHistoryItemModel) _then) = __$AttendanceHistoryItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, DateTime date, DateTime? checkInTime, DateTime? checkOutTime, int? durationMins, String status, String? checkInLocationId, String? checkOutLocationId, String? deviceId, DateTime createdAt, DateTime updatedAt, AttendanceHistoryEmployeeModel employee, AttendanceHistoryLocationModel? checkInLocation, AttendanceHistoryLocationModel? checkOutLocation, AttendanceHistoryDeviceModel? device
});


@override $AttendanceHistoryEmployeeModelCopyWith<$Res> get employee;@override $AttendanceHistoryLocationModelCopyWith<$Res>? get checkInLocation;@override $AttendanceHistoryLocationModelCopyWith<$Res>? get checkOutLocation;@override $AttendanceHistoryDeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class __$AttendanceHistoryItemModelCopyWithImpl<$Res>
    implements _$AttendanceHistoryItemModelCopyWith<$Res> {
  __$AttendanceHistoryItemModelCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryItemModel _self;
  final $Res Function(_AttendanceHistoryItemModel) _then;

/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? date = null,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? durationMins = freezed,Object? status = null,Object? checkInLocationId = freezed,Object? checkOutLocationId = freezed,Object? deviceId = freezed,Object? createdAt = null,Object? updatedAt = null,Object? employee = null,Object? checkInLocation = freezed,Object? checkOutLocation = freezed,Object? device = freezed,}) {
  return _then(_AttendanceHistoryItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,checkInTime: freezed == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime?,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,durationMins: freezed == durationMins ? _self.durationMins : durationMins // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,checkInLocationId: freezed == checkInLocationId ? _self.checkInLocationId : checkInLocationId // ignore: cast_nullable_to_non_nullable
as String?,checkOutLocationId: freezed == checkOutLocationId ? _self.checkOutLocationId : checkOutLocationId // ignore: cast_nullable_to_non_nullable
as String?,deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryEmployeeModel,checkInLocation: freezed == checkInLocation ? _self.checkInLocation : checkInLocation // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryLocationModel?,checkOutLocation: freezed == checkOutLocation ? _self.checkOutLocation : checkOutLocation // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryLocationModel?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceHistoryDeviceModel?,
  ));
}

/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryEmployeeModelCopyWith<$Res> get employee {
  
  return $AttendanceHistoryEmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryLocationModelCopyWith<$Res>? get checkInLocation {
    if (_self.checkInLocation == null) {
    return null;
  }

  return $AttendanceHistoryLocationModelCopyWith<$Res>(_self.checkInLocation!, (value) {
    return _then(_self.copyWith(checkInLocation: value));
  });
}/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryLocationModelCopyWith<$Res>? get checkOutLocation {
    if (_self.checkOutLocation == null) {
    return null;
  }

  return $AttendanceHistoryLocationModelCopyWith<$Res>(_self.checkOutLocation!, (value) {
    return _then(_self.copyWith(checkOutLocation: value));
  });
}/// Create a copy of AttendanceHistoryItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceHistoryDeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceHistoryDeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// @nodoc
mixin _$AttendanceHistoryEmployeeModel {

 String get id; String get firstName; String get lastName; String get dni; String get position; String get department;
/// Create a copy of AttendanceHistoryEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryEmployeeModelCopyWith<AttendanceHistoryEmployeeModel> get copyWith => _$AttendanceHistoryEmployeeModelCopyWithImpl<AttendanceHistoryEmployeeModel>(this as AttendanceHistoryEmployeeModel, _$identity);

  /// Serializes this AttendanceHistoryEmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryEmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,dni,position,department);

@override
String toString() {
  return 'AttendanceHistoryEmployeeModel(id: $id, firstName: $firstName, lastName: $lastName, dni: $dni, position: $position, department: $department)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryEmployeeModelCopyWith<$Res>  {
  factory $AttendanceHistoryEmployeeModelCopyWith(AttendanceHistoryEmployeeModel value, $Res Function(AttendanceHistoryEmployeeModel) _then) = _$AttendanceHistoryEmployeeModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String dni, String position, String department
});




}
/// @nodoc
class _$AttendanceHistoryEmployeeModelCopyWithImpl<$Res>
    implements $AttendanceHistoryEmployeeModelCopyWith<$Res> {
  _$AttendanceHistoryEmployeeModelCopyWithImpl(this._self, this._then);

  final AttendanceHistoryEmployeeModel _self;
  final $Res Function(AttendanceHistoryEmployeeModel) _then;

/// Create a copy of AttendanceHistoryEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? position = null,Object? department = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceHistoryEmployeeModel].
extension AttendanceHistoryEmployeeModelPatterns on AttendanceHistoryEmployeeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryEmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryEmployeeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryEmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryEmployeeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryEmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryEmployeeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryEmployeeModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryEmployeeModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryEmployeeModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryEmployeeModel implements AttendanceHistoryEmployeeModel {
  const _AttendanceHistoryEmployeeModel({required this.id, required this.firstName, required this.lastName, required this.dni, required this.position, required this.department});
  factory _AttendanceHistoryEmployeeModel.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryEmployeeModelFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String dni;
@override final  String position;
@override final  String department;

/// Create a copy of AttendanceHistoryEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryEmployeeModelCopyWith<_AttendanceHistoryEmployeeModel> get copyWith => __$AttendanceHistoryEmployeeModelCopyWithImpl<_AttendanceHistoryEmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryEmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryEmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,dni,position,department);

@override
String toString() {
  return 'AttendanceHistoryEmployeeModel(id: $id, firstName: $firstName, lastName: $lastName, dni: $dni, position: $position, department: $department)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryEmployeeModelCopyWith<$Res> implements $AttendanceHistoryEmployeeModelCopyWith<$Res> {
  factory _$AttendanceHistoryEmployeeModelCopyWith(_AttendanceHistoryEmployeeModel value, $Res Function(_AttendanceHistoryEmployeeModel) _then) = __$AttendanceHistoryEmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String dni, String position, String department
});




}
/// @nodoc
class __$AttendanceHistoryEmployeeModelCopyWithImpl<$Res>
    implements _$AttendanceHistoryEmployeeModelCopyWith<$Res> {
  __$AttendanceHistoryEmployeeModelCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryEmployeeModel _self;
  final $Res Function(_AttendanceHistoryEmployeeModel) _then;

/// Create a copy of AttendanceHistoryEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? position = null,Object? department = null,}) {
  return _then(_AttendanceHistoryEmployeeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttendanceHistoryLocationModel {

 String get id; String get name; double? get latitude; double? get longitude; double? get accuracy;
/// Create a copy of AttendanceHistoryLocationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryLocationModelCopyWith<AttendanceHistoryLocationModel> get copyWith => _$AttendanceHistoryLocationModelCopyWithImpl<AttendanceHistoryLocationModel>(this as AttendanceHistoryLocationModel, _$identity);

  /// Serializes this AttendanceHistoryLocationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryLocationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceHistoryLocationModel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryLocationModelCopyWith<$Res>  {
  factory $AttendanceHistoryLocationModelCopyWith(AttendanceHistoryLocationModel value, $Res Function(AttendanceHistoryLocationModel) _then) = _$AttendanceHistoryLocationModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class _$AttendanceHistoryLocationModelCopyWithImpl<$Res>
    implements $AttendanceHistoryLocationModelCopyWith<$Res> {
  _$AttendanceHistoryLocationModelCopyWithImpl(this._self, this._then);

  final AttendanceHistoryLocationModel _self;
  final $Res Function(AttendanceHistoryLocationModel) _then;

/// Create a copy of AttendanceHistoryLocationModel
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


/// Adds pattern-matching-related methods to [AttendanceHistoryLocationModel].
extension AttendanceHistoryLocationModelPatterns on AttendanceHistoryLocationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryLocationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryLocationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryLocationModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryLocationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryLocationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryLocationModel() when $default != null:
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
case _AttendanceHistoryLocationModel() when $default != null:
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
case _AttendanceHistoryLocationModel():
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
case _AttendanceHistoryLocationModel() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.accuracy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryLocationModel implements AttendanceHistoryLocationModel {
  const _AttendanceHistoryLocationModel({required this.id, required this.name, this.latitude, this.longitude, this.accuracy});
  factory _AttendanceHistoryLocationModel.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryLocationModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;

/// Create a copy of AttendanceHistoryLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryLocationModelCopyWith<_AttendanceHistoryLocationModel> get copyWith => __$AttendanceHistoryLocationModelCopyWithImpl<_AttendanceHistoryLocationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryLocationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryLocationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceHistoryLocationModel(id: $id, name: $name, latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryLocationModelCopyWith<$Res> implements $AttendanceHistoryLocationModelCopyWith<$Res> {
  factory _$AttendanceHistoryLocationModelCopyWith(_AttendanceHistoryLocationModel value, $Res Function(_AttendanceHistoryLocationModel) _then) = __$AttendanceHistoryLocationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class __$AttendanceHistoryLocationModelCopyWithImpl<$Res>
    implements _$AttendanceHistoryLocationModelCopyWith<$Res> {
  __$AttendanceHistoryLocationModelCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryLocationModel _self;
  final $Res Function(_AttendanceHistoryLocationModel) _then;

/// Create a copy of AttendanceHistoryLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_AttendanceHistoryLocationModel(
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
mixin _$AttendanceHistoryDeviceModel {

 String get id; String get name; String get os; String get browser; String get userAgent;
/// Create a copy of AttendanceHistoryDeviceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryDeviceModelCopyWith<AttendanceHistoryDeviceModel> get copyWith => _$AttendanceHistoryDeviceModelCopyWithImpl<AttendanceHistoryDeviceModel>(this as AttendanceHistoryDeviceModel, _$identity);

  /// Serializes this AttendanceHistoryDeviceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryDeviceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.os, os) || other.os == os)&&(identical(other.browser, browser) || other.browser == browser)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,os,browser,userAgent);

@override
String toString() {
  return 'AttendanceHistoryDeviceModel(id: $id, name: $name, os: $os, browser: $browser, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryDeviceModelCopyWith<$Res>  {
  factory $AttendanceHistoryDeviceModelCopyWith(AttendanceHistoryDeviceModel value, $Res Function(AttendanceHistoryDeviceModel) _then) = _$AttendanceHistoryDeviceModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String os, String browser, String userAgent
});




}
/// @nodoc
class _$AttendanceHistoryDeviceModelCopyWithImpl<$Res>
    implements $AttendanceHistoryDeviceModelCopyWith<$Res> {
  _$AttendanceHistoryDeviceModelCopyWithImpl(this._self, this._then);

  final AttendanceHistoryDeviceModel _self;
  final $Res Function(AttendanceHistoryDeviceModel) _then;

/// Create a copy of AttendanceHistoryDeviceModel
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


/// Adds pattern-matching-related methods to [AttendanceHistoryDeviceModel].
extension AttendanceHistoryDeviceModelPatterns on AttendanceHistoryDeviceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryDeviceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryDeviceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryDeviceModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryDeviceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryDeviceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryDeviceModel() when $default != null:
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
case _AttendanceHistoryDeviceModel() when $default != null:
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
case _AttendanceHistoryDeviceModel():
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
case _AttendanceHistoryDeviceModel() when $default != null:
return $default(_that.id,_that.name,_that.os,_that.browser,_that.userAgent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryDeviceModel implements AttendanceHistoryDeviceModel {
  const _AttendanceHistoryDeviceModel({required this.id, required this.name, required this.os, required this.browser, required this.userAgent});
  factory _AttendanceHistoryDeviceModel.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryDeviceModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String os;
@override final  String browser;
@override final  String userAgent;

/// Create a copy of AttendanceHistoryDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryDeviceModelCopyWith<_AttendanceHistoryDeviceModel> get copyWith => __$AttendanceHistoryDeviceModelCopyWithImpl<_AttendanceHistoryDeviceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryDeviceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryDeviceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.os, os) || other.os == os)&&(identical(other.browser, browser) || other.browser == browser)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,os,browser,userAgent);

@override
String toString() {
  return 'AttendanceHistoryDeviceModel(id: $id, name: $name, os: $os, browser: $browser, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryDeviceModelCopyWith<$Res> implements $AttendanceHistoryDeviceModelCopyWith<$Res> {
  factory _$AttendanceHistoryDeviceModelCopyWith(_AttendanceHistoryDeviceModel value, $Res Function(_AttendanceHistoryDeviceModel) _then) = __$AttendanceHistoryDeviceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String os, String browser, String userAgent
});




}
/// @nodoc
class __$AttendanceHistoryDeviceModelCopyWithImpl<$Res>
    implements _$AttendanceHistoryDeviceModelCopyWith<$Res> {
  __$AttendanceHistoryDeviceModelCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryDeviceModel _self;
  final $Res Function(_AttendanceHistoryDeviceModel) _then;

/// Create a copy of AttendanceHistoryDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? os = null,Object? browser = null,Object? userAgent = null,}) {
  return _then(_AttendanceHistoryDeviceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,os: null == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String,browser: null == browser ? _self.browser : browser // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PaginationInfoModel {

 int get page; int get limit; int get total; int get totalPages;
/// Create a copy of PaginationInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationInfoModelCopyWith<PaginationInfoModel> get copyWith => _$PaginationInfoModelCopyWithImpl<PaginationInfoModel>(this as PaginationInfoModel, _$identity);

  /// Serializes this PaginationInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationInfoModel&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'PaginationInfoModel(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationInfoModelCopyWith<$Res>  {
  factory $PaginationInfoModelCopyWith(PaginationInfoModel value, $Res Function(PaginationInfoModel) _then) = _$PaginationInfoModelCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class _$PaginationInfoModelCopyWithImpl<$Res>
    implements $PaginationInfoModelCopyWith<$Res> {
  _$PaginationInfoModelCopyWithImpl(this._self, this._then);

  final PaginationInfoModel _self;
  final $Res Function(PaginationInfoModel) _then;

/// Create a copy of PaginationInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationInfoModel].
extension PaginationInfoModelPatterns on PaginationInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _PaginationInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationInfoModel() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _PaginationInfoModel():
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int total,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PaginationInfoModel() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationInfoModel implements PaginationInfoModel {
  const _PaginationInfoModel({required this.page, required this.limit, required this.total, required this.totalPages});
  factory _PaginationInfoModel.fromJson(Map<String, dynamic> json) => _$PaginationInfoModelFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
@override final  int totalPages;

/// Create a copy of PaginationInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationInfoModelCopyWith<_PaginationInfoModel> get copyWith => __$PaginationInfoModelCopyWithImpl<_PaginationInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationInfoModel&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,totalPages);

@override
String toString() {
  return 'PaginationInfoModel(page: $page, limit: $limit, total: $total, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationInfoModelCopyWith<$Res> implements $PaginationInfoModelCopyWith<$Res> {
  factory _$PaginationInfoModelCopyWith(_PaginationInfoModel value, $Res Function(_PaginationInfoModel) _then) = __$PaginationInfoModelCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, int totalPages
});




}
/// @nodoc
class __$PaginationInfoModelCopyWithImpl<$Res>
    implements _$PaginationInfoModelCopyWith<$Res> {
  __$PaginationInfoModelCopyWithImpl(this._self, this._then);

  final _PaginationInfoModel _self;
  final $Res Function(_PaginationInfoModel) _then;

/// Create a copy of PaginationInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? totalPages = null,}) {
  return _then(_PaginationInfoModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
