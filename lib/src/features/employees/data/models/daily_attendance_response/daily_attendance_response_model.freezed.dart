// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_attendance_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyAttendanceResponseModel {

 bool get success; DailyAttendanceDataModel? get data; String? get message;
/// Create a copy of DailyAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyAttendanceResponseModelCopyWith<DailyAttendanceResponseModel> get copyWith => _$DailyAttendanceResponseModelCopyWithImpl<DailyAttendanceResponseModel>(this as DailyAttendanceResponseModel, _$identity);

  /// Serializes this DailyAttendanceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyAttendanceResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'DailyAttendanceResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $DailyAttendanceResponseModelCopyWith<$Res>  {
  factory $DailyAttendanceResponseModelCopyWith(DailyAttendanceResponseModel value, $Res Function(DailyAttendanceResponseModel) _then) = _$DailyAttendanceResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, DailyAttendanceDataModel? data, String? message
});


$DailyAttendanceDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$DailyAttendanceResponseModelCopyWithImpl<$Res>
    implements $DailyAttendanceResponseModelCopyWith<$Res> {
  _$DailyAttendanceResponseModelCopyWithImpl(this._self, this._then);

  final DailyAttendanceResponseModel _self;
  final $Res Function(DailyAttendanceResponseModel) _then;

/// Create a copy of DailyAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DailyAttendanceDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DailyAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyAttendanceDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DailyAttendanceDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyAttendanceResponseModel].
extension DailyAttendanceResponseModelPatterns on DailyAttendanceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyAttendanceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyAttendanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyAttendanceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _DailyAttendanceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyAttendanceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _DailyAttendanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  DailyAttendanceDataModel? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyAttendanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  DailyAttendanceDataModel? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _DailyAttendanceResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  DailyAttendanceDataModel? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _DailyAttendanceResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyAttendanceResponseModel implements DailyAttendanceResponseModel {
  const _DailyAttendanceResponseModel({required this.success, this.data, this.message});
  factory _DailyAttendanceResponseModel.fromJson(Map<String, dynamic> json) => _$DailyAttendanceResponseModelFromJson(json);

@override final  bool success;
@override final  DailyAttendanceDataModel? data;
@override final  String? message;

/// Create a copy of DailyAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyAttendanceResponseModelCopyWith<_DailyAttendanceResponseModel> get copyWith => __$DailyAttendanceResponseModelCopyWithImpl<_DailyAttendanceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyAttendanceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyAttendanceResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'DailyAttendanceResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$DailyAttendanceResponseModelCopyWith<$Res> implements $DailyAttendanceResponseModelCopyWith<$Res> {
  factory _$DailyAttendanceResponseModelCopyWith(_DailyAttendanceResponseModel value, $Res Function(_DailyAttendanceResponseModel) _then) = __$DailyAttendanceResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, DailyAttendanceDataModel? data, String? message
});


@override $DailyAttendanceDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$DailyAttendanceResponseModelCopyWithImpl<$Res>
    implements _$DailyAttendanceResponseModelCopyWith<$Res> {
  __$DailyAttendanceResponseModelCopyWithImpl(this._self, this._then);

  final _DailyAttendanceResponseModel _self;
  final $Res Function(_DailyAttendanceResponseModel) _then;

/// Create a copy of DailyAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_DailyAttendanceResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DailyAttendanceDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DailyAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyAttendanceDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DailyAttendanceDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DailyAttendanceDataModel {

 String get date; List<EmployeeAttendanceModel> get employees; AttendanceStatsModel get stats; PaginationResponseModel get pagination; AttendanceFiltersModel get filters;
/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyAttendanceDataModelCopyWith<DailyAttendanceDataModel> get copyWith => _$DailyAttendanceDataModelCopyWithImpl<DailyAttendanceDataModel>(this as DailyAttendanceDataModel, _$identity);

  /// Serializes this DailyAttendanceDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyAttendanceDataModel&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.employees, employees)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(employees),stats,pagination,filters);

@override
String toString() {
  return 'DailyAttendanceDataModel(date: $date, employees: $employees, stats: $stats, pagination: $pagination, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $DailyAttendanceDataModelCopyWith<$Res>  {
  factory $DailyAttendanceDataModelCopyWith(DailyAttendanceDataModel value, $Res Function(DailyAttendanceDataModel) _then) = _$DailyAttendanceDataModelCopyWithImpl;
@useResult
$Res call({
 String date, List<EmployeeAttendanceModel> employees, AttendanceStatsModel stats, PaginationResponseModel pagination, AttendanceFiltersModel filters
});


$AttendanceStatsModelCopyWith<$Res> get stats;$PaginationResponseModelCopyWith<$Res> get pagination;$AttendanceFiltersModelCopyWith<$Res> get filters;

}
/// @nodoc
class _$DailyAttendanceDataModelCopyWithImpl<$Res>
    implements $DailyAttendanceDataModelCopyWith<$Res> {
  _$DailyAttendanceDataModelCopyWithImpl(this._self, this._then);

  final DailyAttendanceDataModel _self;
  final $Res Function(DailyAttendanceDataModel) _then;

/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? employees = null,Object? stats = null,Object? pagination = null,Object? filters = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,employees: null == employees ? _self.employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeAttendanceModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as AttendanceStatsModel,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationResponseModel,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as AttendanceFiltersModel,
  ));
}
/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceStatsModelCopyWith<$Res> get stats {
  
  return $AttendanceStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationResponseModelCopyWith<$Res> get pagination {
  
  return $PaginationResponseModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceFiltersModelCopyWith<$Res> get filters {
  
  return $AttendanceFiltersModelCopyWith<$Res>(_self.filters, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// Adds pattern-matching-related methods to [DailyAttendanceDataModel].
extension DailyAttendanceDataModelPatterns on DailyAttendanceDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyAttendanceDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyAttendanceDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyAttendanceDataModel value)  $default,){
final _that = this;
switch (_that) {
case _DailyAttendanceDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyAttendanceDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _DailyAttendanceDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  List<EmployeeAttendanceModel> employees,  AttendanceStatsModel stats,  PaginationResponseModel pagination,  AttendanceFiltersModel filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyAttendanceDataModel() when $default != null:
return $default(_that.date,_that.employees,_that.stats,_that.pagination,_that.filters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  List<EmployeeAttendanceModel> employees,  AttendanceStatsModel stats,  PaginationResponseModel pagination,  AttendanceFiltersModel filters)  $default,) {final _that = this;
switch (_that) {
case _DailyAttendanceDataModel():
return $default(_that.date,_that.employees,_that.stats,_that.pagination,_that.filters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  List<EmployeeAttendanceModel> employees,  AttendanceStatsModel stats,  PaginationResponseModel pagination,  AttendanceFiltersModel filters)?  $default,) {final _that = this;
switch (_that) {
case _DailyAttendanceDataModel() when $default != null:
return $default(_that.date,_that.employees,_that.stats,_that.pagination,_that.filters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyAttendanceDataModel implements DailyAttendanceDataModel {
  const _DailyAttendanceDataModel({required this.date, required final  List<EmployeeAttendanceModel> employees, required this.stats, required this.pagination, required this.filters}): _employees = employees;
  factory _DailyAttendanceDataModel.fromJson(Map<String, dynamic> json) => _$DailyAttendanceDataModelFromJson(json);

@override final  String date;
 final  List<EmployeeAttendanceModel> _employees;
@override List<EmployeeAttendanceModel> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}

@override final  AttendanceStatsModel stats;
@override final  PaginationResponseModel pagination;
@override final  AttendanceFiltersModel filters;

/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyAttendanceDataModelCopyWith<_DailyAttendanceDataModel> get copyWith => __$DailyAttendanceDataModelCopyWithImpl<_DailyAttendanceDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyAttendanceDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyAttendanceDataModel&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._employees, _employees)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.pagination, pagination) || other.pagination == pagination)&&(identical(other.filters, filters) || other.filters == filters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_employees),stats,pagination,filters);

@override
String toString() {
  return 'DailyAttendanceDataModel(date: $date, employees: $employees, stats: $stats, pagination: $pagination, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$DailyAttendanceDataModelCopyWith<$Res> implements $DailyAttendanceDataModelCopyWith<$Res> {
  factory _$DailyAttendanceDataModelCopyWith(_DailyAttendanceDataModel value, $Res Function(_DailyAttendanceDataModel) _then) = __$DailyAttendanceDataModelCopyWithImpl;
@override @useResult
$Res call({
 String date, List<EmployeeAttendanceModel> employees, AttendanceStatsModel stats, PaginationResponseModel pagination, AttendanceFiltersModel filters
});


@override $AttendanceStatsModelCopyWith<$Res> get stats;@override $PaginationResponseModelCopyWith<$Res> get pagination;@override $AttendanceFiltersModelCopyWith<$Res> get filters;

}
/// @nodoc
class __$DailyAttendanceDataModelCopyWithImpl<$Res>
    implements _$DailyAttendanceDataModelCopyWith<$Res> {
  __$DailyAttendanceDataModelCopyWithImpl(this._self, this._then);

  final _DailyAttendanceDataModel _self;
  final $Res Function(_DailyAttendanceDataModel) _then;

/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? employees = null,Object? stats = null,Object? pagination = null,Object? filters = null,}) {
  return _then(_DailyAttendanceDataModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,employees: null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeAttendanceModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as AttendanceStatsModel,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationResponseModel,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as AttendanceFiltersModel,
  ));
}

/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceStatsModelCopyWith<$Res> get stats {
  
  return $AttendanceStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationResponseModelCopyWith<$Res> get pagination {
  
  return $PaginationResponseModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}/// Create a copy of DailyAttendanceDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceFiltersModelCopyWith<$Res> get filters {
  
  return $AttendanceFiltersModelCopyWith<$Res>(_self.filters, (value) {
    return _then(_self.copyWith(filters: value));
  });
}
}


/// @nodoc
mixin _$EmployeeAttendanceModel {

 String get id; String get firstName; String get lastName; String get dni; String get position; String get department; String? get phone; String? get photoUrl; String? get shift; AttendanceUserModel get user; AttendanceRecordModel? get attendance; String get attendanceStatus; String get statusLabel;
/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeAttendanceModelCopyWith<EmployeeAttendanceModel> get copyWith => _$EmployeeAttendanceModelCopyWithImpl<EmployeeAttendanceModel>(this as EmployeeAttendanceModel, _$identity);

  /// Serializes this EmployeeAttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeAttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.user, user) || other.user == user)&&(identical(other.attendance, attendance) || other.attendance == attendance)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,dni,position,department,phone,photoUrl,shift,user,attendance,attendanceStatus,statusLabel);

@override
String toString() {
  return 'EmployeeAttendanceModel(id: $id, firstName: $firstName, lastName: $lastName, dni: $dni, position: $position, department: $department, phone: $phone, photoUrl: $photoUrl, shift: $shift, user: $user, attendance: $attendance, attendanceStatus: $attendanceStatus, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class $EmployeeAttendanceModelCopyWith<$Res>  {
  factory $EmployeeAttendanceModelCopyWith(EmployeeAttendanceModel value, $Res Function(EmployeeAttendanceModel) _then) = _$EmployeeAttendanceModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String dni, String position, String department, String? phone, String? photoUrl, String? shift, AttendanceUserModel user, AttendanceRecordModel? attendance, String attendanceStatus, String statusLabel
});


$AttendanceUserModelCopyWith<$Res> get user;$AttendanceRecordModelCopyWith<$Res>? get attendance;

}
/// @nodoc
class _$EmployeeAttendanceModelCopyWithImpl<$Res>
    implements $EmployeeAttendanceModelCopyWith<$Res> {
  _$EmployeeAttendanceModelCopyWithImpl(this._self, this._then);

  final EmployeeAttendanceModel _self;
  final $Res Function(EmployeeAttendanceModel) _then;

/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? position = null,Object? department = null,Object? phone = freezed,Object? photoUrl = freezed,Object? shift = freezed,Object? user = null,Object? attendance = freezed,Object? attendanceStatus = null,Object? statusLabel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AttendanceUserModel,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceRecordModel?,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceUserModelCopyWith<$Res> get user {
  
  return $AttendanceUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordModelCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $AttendanceRecordModelCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeeAttendanceModel].
extension EmployeeAttendanceModelPatterns on EmployeeAttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeAttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeAttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeAttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeAttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department,  String? phone,  String? photoUrl,  String? shift,  AttendanceUserModel user,  AttendanceRecordModel? attendance,  String attendanceStatus,  String statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeAttendanceModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department,_that.phone,_that.photoUrl,_that.shift,_that.user,_that.attendance,_that.attendanceStatus,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department,  String? phone,  String? photoUrl,  String? shift,  AttendanceUserModel user,  AttendanceRecordModel? attendance,  String attendanceStatus,  String statusLabel)  $default,) {final _that = this;
switch (_that) {
case _EmployeeAttendanceModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department,_that.phone,_that.photoUrl,_that.shift,_that.user,_that.attendance,_that.attendanceStatus,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department,  String? phone,  String? photoUrl,  String? shift,  AttendanceUserModel user,  AttendanceRecordModel? attendance,  String attendanceStatus,  String statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeAttendanceModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department,_that.phone,_that.photoUrl,_that.shift,_that.user,_that.attendance,_that.attendanceStatus,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeAttendanceModel implements EmployeeAttendanceModel {
  const _EmployeeAttendanceModel({required this.id, required this.firstName, required this.lastName, required this.dni, required this.position, required this.department, this.phone, this.photoUrl, this.shift, required this.user, this.attendance, required this.attendanceStatus, required this.statusLabel});
  factory _EmployeeAttendanceModel.fromJson(Map<String, dynamic> json) => _$EmployeeAttendanceModelFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String dni;
@override final  String position;
@override final  String department;
@override final  String? phone;
@override final  String? photoUrl;
@override final  String? shift;
@override final  AttendanceUserModel user;
@override final  AttendanceRecordModel? attendance;
@override final  String attendanceStatus;
@override final  String statusLabel;

/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeAttendanceModelCopyWith<_EmployeeAttendanceModel> get copyWith => __$EmployeeAttendanceModelCopyWithImpl<_EmployeeAttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeAttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeAttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.user, user) || other.user == user)&&(identical(other.attendance, attendance) || other.attendance == attendance)&&(identical(other.attendanceStatus, attendanceStatus) || other.attendanceStatus == attendanceStatus)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,dni,position,department,phone,photoUrl,shift,user,attendance,attendanceStatus,statusLabel);

@override
String toString() {
  return 'EmployeeAttendanceModel(id: $id, firstName: $firstName, lastName: $lastName, dni: $dni, position: $position, department: $department, phone: $phone, photoUrl: $photoUrl, shift: $shift, user: $user, attendance: $attendance, attendanceStatus: $attendanceStatus, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$EmployeeAttendanceModelCopyWith<$Res> implements $EmployeeAttendanceModelCopyWith<$Res> {
  factory _$EmployeeAttendanceModelCopyWith(_EmployeeAttendanceModel value, $Res Function(_EmployeeAttendanceModel) _then) = __$EmployeeAttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String dni, String position, String department, String? phone, String? photoUrl, String? shift, AttendanceUserModel user, AttendanceRecordModel? attendance, String attendanceStatus, String statusLabel
});


@override $AttendanceUserModelCopyWith<$Res> get user;@override $AttendanceRecordModelCopyWith<$Res>? get attendance;

}
/// @nodoc
class __$EmployeeAttendanceModelCopyWithImpl<$Res>
    implements _$EmployeeAttendanceModelCopyWith<$Res> {
  __$EmployeeAttendanceModelCopyWithImpl(this._self, this._then);

  final _EmployeeAttendanceModel _self;
  final $Res Function(_EmployeeAttendanceModel) _then;

/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? position = null,Object? department = null,Object? phone = freezed,Object? photoUrl = freezed,Object? shift = freezed,Object? user = null,Object? attendance = freezed,Object? attendanceStatus = null,Object? statusLabel = null,}) {
  return _then(_EmployeeAttendanceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AttendanceUserModel,attendance: freezed == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceRecordModel?,attendanceStatus: null == attendanceStatus ? _self.attendanceStatus : attendanceStatus // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceUserModelCopyWith<$Res> get user {
  
  return $AttendanceUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordModelCopyWith<$Res>? get attendance {
    if (_self.attendance == null) {
    return null;
  }

  return $AttendanceRecordModelCopyWith<$Res>(_self.attendance!, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}
}


/// @nodoc
mixin _$AttendanceUserModel {

 String get id; String get email;
/// Create a copy of AttendanceUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceUserModelCopyWith<AttendanceUserModel> get copyWith => _$AttendanceUserModelCopyWithImpl<AttendanceUserModel>(this as AttendanceUserModel, _$identity);

  /// Serializes this AttendanceUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email);

@override
String toString() {
  return 'AttendanceUserModel(id: $id, email: $email)';
}


}

/// @nodoc
abstract mixin class $AttendanceUserModelCopyWith<$Res>  {
  factory $AttendanceUserModelCopyWith(AttendanceUserModel value, $Res Function(AttendanceUserModel) _then) = _$AttendanceUserModelCopyWithImpl;
@useResult
$Res call({
 String id, String email
});




}
/// @nodoc
class _$AttendanceUserModelCopyWithImpl<$Res>
    implements $AttendanceUserModelCopyWith<$Res> {
  _$AttendanceUserModelCopyWithImpl(this._self, this._then);

  final AttendanceUserModel _self;
  final $Res Function(AttendanceUserModel) _then;

/// Create a copy of AttendanceUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceUserModel].
extension AttendanceUserModelPatterns on AttendanceUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceUserModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceUserModel() when $default != null:
return $default(_that.id,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email)  $default,) {final _that = this;
switch (_that) {
case _AttendanceUserModel():
return $default(_that.id,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceUserModel() when $default != null:
return $default(_that.id,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceUserModel implements AttendanceUserModel {
  const _AttendanceUserModel({required this.id, required this.email});
  factory _AttendanceUserModel.fromJson(Map<String, dynamic> json) => _$AttendanceUserModelFromJson(json);

@override final  String id;
@override final  String email;

/// Create a copy of AttendanceUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceUserModelCopyWith<_AttendanceUserModel> get copyWith => __$AttendanceUserModelCopyWithImpl<_AttendanceUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email);

@override
String toString() {
  return 'AttendanceUserModel(id: $id, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AttendanceUserModelCopyWith<$Res> implements $AttendanceUserModelCopyWith<$Res> {
  factory _$AttendanceUserModelCopyWith(_AttendanceUserModel value, $Res Function(_AttendanceUserModel) _then) = __$AttendanceUserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email
});




}
/// @nodoc
class __$AttendanceUserModelCopyWithImpl<$Res>
    implements _$AttendanceUserModelCopyWith<$Res> {
  __$AttendanceUserModelCopyWithImpl(this._self, this._then);

  final _AttendanceUserModel _self;
  final $Res Function(_AttendanceUserModel) _then;

/// Create a copy of AttendanceUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,}) {
  return _then(_AttendanceUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttendanceRecordModel {

 String get id; String get employeeId; DateTime get date; DateTime? get checkInTime; DateTime? get checkOutTime; int? get durationMins; String get status; String? get checkInLocationId; String? get checkOutLocationId; String? get deviceId; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordModelCopyWith<AttendanceRecordModel> get copyWith => _$AttendanceRecordModelCopyWithImpl<AttendanceRecordModel>(this as AttendanceRecordModel, _$identity);

  /// Serializes this AttendanceRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins)&&(identical(other.status, status) || other.status == status)&&(identical(other.checkInLocationId, checkInLocationId) || other.checkInLocationId == checkInLocationId)&&(identical(other.checkOutLocationId, checkOutLocationId) || other.checkOutLocationId == checkOutLocationId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,date,checkInTime,checkOutTime,durationMins,status,checkInLocationId,checkOutLocationId,deviceId,createdAt,updatedAt);

@override
String toString() {
  return 'AttendanceRecordModel(id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, durationMins: $durationMins, status: $status, checkInLocationId: $checkInLocationId, checkOutLocationId: $checkOutLocationId, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordModelCopyWith<$Res>  {
  factory $AttendanceRecordModelCopyWith(AttendanceRecordModel value, $Res Function(AttendanceRecordModel) _then) = _$AttendanceRecordModelCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, DateTime date, DateTime? checkInTime, DateTime? checkOutTime, int? durationMins, String status, String? checkInLocationId, String? checkOutLocationId, String? deviceId, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$AttendanceRecordModelCopyWithImpl<$Res>
    implements $AttendanceRecordModelCopyWith<$Res> {
  _$AttendanceRecordModelCopyWithImpl(this._self, this._then);

  final AttendanceRecordModel _self;
  final $Res Function(AttendanceRecordModel) _then;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? date = null,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? durationMins = freezed,Object? status = null,Object? checkInLocationId = freezed,Object? checkOutLocationId = freezed,Object? deviceId = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
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
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceRecordModel].
extension AttendanceRecordModelPatterns on AttendanceRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int? durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.durationMins,_that.status,_that.checkInLocationId,_that.checkOutLocationId,_that.deviceId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int? durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecordModel():
return $default(_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.durationMins,_that.status,_that.checkInLocationId,_that.checkOutLocationId,_that.deviceId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  DateTime date,  DateTime? checkInTime,  DateTime? checkOutTime,  int? durationMins,  String status,  String? checkInLocationId,  String? checkOutLocationId,  String? deviceId,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.date,_that.checkInTime,_that.checkOutTime,_that.durationMins,_that.status,_that.checkInLocationId,_that.checkOutLocationId,_that.deviceId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceRecordModel implements AttendanceRecordModel {
  const _AttendanceRecordModel({required this.id, required this.employeeId, required this.date, this.checkInTime, this.checkOutTime, this.durationMins, required this.status, this.checkInLocationId, this.checkOutLocationId, this.deviceId, required this.createdAt, required this.updatedAt});
  factory _AttendanceRecordModel.fromJson(Map<String, dynamic> json) => _$AttendanceRecordModelFromJson(json);

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

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordModelCopyWith<_AttendanceRecordModel> get copyWith => __$AttendanceRecordModelCopyWithImpl<_AttendanceRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins)&&(identical(other.status, status) || other.status == status)&&(identical(other.checkInLocationId, checkInLocationId) || other.checkInLocationId == checkInLocationId)&&(identical(other.checkOutLocationId, checkOutLocationId) || other.checkOutLocationId == checkOutLocationId)&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,date,checkInTime,checkOutTime,durationMins,status,checkInLocationId,checkOutLocationId,deviceId,createdAt,updatedAt);

@override
String toString() {
  return 'AttendanceRecordModel(id: $id, employeeId: $employeeId, date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, durationMins: $durationMins, status: $status, checkInLocationId: $checkInLocationId, checkOutLocationId: $checkOutLocationId, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordModelCopyWith<$Res> implements $AttendanceRecordModelCopyWith<$Res> {
  factory _$AttendanceRecordModelCopyWith(_AttendanceRecordModel value, $Res Function(_AttendanceRecordModel) _then) = __$AttendanceRecordModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, DateTime date, DateTime? checkInTime, DateTime? checkOutTime, int? durationMins, String status, String? checkInLocationId, String? checkOutLocationId, String? deviceId, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$AttendanceRecordModelCopyWithImpl<$Res>
    implements _$AttendanceRecordModelCopyWith<$Res> {
  __$AttendanceRecordModelCopyWithImpl(this._self, this._then);

  final _AttendanceRecordModel _self;
  final $Res Function(_AttendanceRecordModel) _then;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? date = null,Object? checkInTime = freezed,Object? checkOutTime = freezed,Object? durationMins = freezed,Object? status = null,Object? checkInLocationId = freezed,Object? checkOutLocationId = freezed,Object? deviceId = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_AttendanceRecordModel(
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
as DateTime,
  ));
}


}


/// @nodoc
mixin _$AttendanceStatsModel {

 int get total; int get present; int get absent; int get late; int get active; int get completed;
/// Create a copy of AttendanceStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStatsModelCopyWith<AttendanceStatsModel> get copyWith => _$AttendanceStatsModelCopyWithImpl<AttendanceStatsModel>(this as AttendanceStatsModel, _$identity);

  /// Serializes this AttendanceStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceStatsModel&&(identical(other.total, total) || other.total == total)&&(identical(other.present, present) || other.present == present)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.late, late) || other.late == late)&&(identical(other.active, active) || other.active == active)&&(identical(other.completed, completed) || other.completed == completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,present,absent,late,active,completed);

@override
String toString() {
  return 'AttendanceStatsModel(total: $total, present: $present, absent: $absent, late: $late, active: $active, completed: $completed)';
}


}

/// @nodoc
abstract mixin class $AttendanceStatsModelCopyWith<$Res>  {
  factory $AttendanceStatsModelCopyWith(AttendanceStatsModel value, $Res Function(AttendanceStatsModel) _then) = _$AttendanceStatsModelCopyWithImpl;
@useResult
$Res call({
 int total, int present, int absent, int late, int active, int completed
});




}
/// @nodoc
class _$AttendanceStatsModelCopyWithImpl<$Res>
    implements $AttendanceStatsModelCopyWith<$Res> {
  _$AttendanceStatsModelCopyWithImpl(this._self, this._then);

  final AttendanceStatsModel _self;
  final $Res Function(AttendanceStatsModel) _then;

/// Create a copy of AttendanceStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? present = null,Object? absent = null,Object? late = null,Object? active = null,Object? completed = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as int,late: null == late ? _self.late : late // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceStatsModel].
extension AttendanceStatsModelPatterns on AttendanceStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int present,  int absent,  int late,  int active,  int completed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
return $default(_that.total,_that.present,_that.absent,_that.late,_that.active,_that.completed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int present,  int absent,  int late,  int active,  int completed)  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatsModel():
return $default(_that.total,_that.present,_that.absent,_that.late,_that.active,_that.completed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int present,  int absent,  int late,  int active,  int completed)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
return $default(_that.total,_that.present,_that.absent,_that.late,_that.active,_that.completed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceStatsModel implements AttendanceStatsModel {
  const _AttendanceStatsModel({required this.total, required this.present, required this.absent, required this.late, required this.active, required this.completed});
  factory _AttendanceStatsModel.fromJson(Map<String, dynamic> json) => _$AttendanceStatsModelFromJson(json);

@override final  int total;
@override final  int present;
@override final  int absent;
@override final  int late;
@override final  int active;
@override final  int completed;

/// Create a copy of AttendanceStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStatsModelCopyWith<_AttendanceStatsModel> get copyWith => __$AttendanceStatsModelCopyWithImpl<_AttendanceStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceStatsModel&&(identical(other.total, total) || other.total == total)&&(identical(other.present, present) || other.present == present)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.late, late) || other.late == late)&&(identical(other.active, active) || other.active == active)&&(identical(other.completed, completed) || other.completed == completed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,present,absent,late,active,completed);

@override
String toString() {
  return 'AttendanceStatsModel(total: $total, present: $present, absent: $absent, late: $late, active: $active, completed: $completed)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStatsModelCopyWith<$Res> implements $AttendanceStatsModelCopyWith<$Res> {
  factory _$AttendanceStatsModelCopyWith(_AttendanceStatsModel value, $Res Function(_AttendanceStatsModel) _then) = __$AttendanceStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int total, int present, int absent, int late, int active, int completed
});




}
/// @nodoc
class __$AttendanceStatsModelCopyWithImpl<$Res>
    implements _$AttendanceStatsModelCopyWith<$Res> {
  __$AttendanceStatsModelCopyWithImpl(this._self, this._then);

  final _AttendanceStatsModel _self;
  final $Res Function(_AttendanceStatsModel) _then;

/// Create a copy of AttendanceStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? present = null,Object? absent = null,Object? late = null,Object? active = null,Object? completed = null,}) {
  return _then(_AttendanceStatsModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as int,late: null == late ? _self.late : late // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as int,completed: null == completed ? _self.completed : completed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AttendanceFiltersModel {

 String? get department; String? get position;
/// Create a copy of AttendanceFiltersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceFiltersModelCopyWith<AttendanceFiltersModel> get copyWith => _$AttendanceFiltersModelCopyWithImpl<AttendanceFiltersModel>(this as AttendanceFiltersModel, _$identity);

  /// Serializes this AttendanceFiltersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceFiltersModel&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,department,position);

@override
String toString() {
  return 'AttendanceFiltersModel(department: $department, position: $position)';
}


}

/// @nodoc
abstract mixin class $AttendanceFiltersModelCopyWith<$Res>  {
  factory $AttendanceFiltersModelCopyWith(AttendanceFiltersModel value, $Res Function(AttendanceFiltersModel) _then) = _$AttendanceFiltersModelCopyWithImpl;
@useResult
$Res call({
 String? department, String? position
});




}
/// @nodoc
class _$AttendanceFiltersModelCopyWithImpl<$Res>
    implements $AttendanceFiltersModelCopyWith<$Res> {
  _$AttendanceFiltersModelCopyWithImpl(this._self, this._then);

  final AttendanceFiltersModel _self;
  final $Res Function(AttendanceFiltersModel) _then;

/// Create a copy of AttendanceFiltersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? department = freezed,Object? position = freezed,}) {
  return _then(_self.copyWith(
department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceFiltersModel].
extension AttendanceFiltersModelPatterns on AttendanceFiltersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceFiltersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceFiltersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceFiltersModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceFiltersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceFiltersModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceFiltersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? department,  String? position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceFiltersModel() when $default != null:
return $default(_that.department,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? department,  String? position)  $default,) {final _that = this;
switch (_that) {
case _AttendanceFiltersModel():
return $default(_that.department,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? department,  String? position)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceFiltersModel() when $default != null:
return $default(_that.department,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceFiltersModel implements AttendanceFiltersModel {
  const _AttendanceFiltersModel({this.department, this.position});
  factory _AttendanceFiltersModel.fromJson(Map<String, dynamic> json) => _$AttendanceFiltersModelFromJson(json);

@override final  String? department;
@override final  String? position;

/// Create a copy of AttendanceFiltersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceFiltersModelCopyWith<_AttendanceFiltersModel> get copyWith => __$AttendanceFiltersModelCopyWithImpl<_AttendanceFiltersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceFiltersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceFiltersModel&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,department,position);

@override
String toString() {
  return 'AttendanceFiltersModel(department: $department, position: $position)';
}


}

/// @nodoc
abstract mixin class _$AttendanceFiltersModelCopyWith<$Res> implements $AttendanceFiltersModelCopyWith<$Res> {
  factory _$AttendanceFiltersModelCopyWith(_AttendanceFiltersModel value, $Res Function(_AttendanceFiltersModel) _then) = __$AttendanceFiltersModelCopyWithImpl;
@override @useResult
$Res call({
 String? department, String? position
});




}
/// @nodoc
class __$AttendanceFiltersModelCopyWithImpl<$Res>
    implements _$AttendanceFiltersModelCopyWith<$Res> {
  __$AttendanceFiltersModelCopyWithImpl(this._self, this._then);

  final _AttendanceFiltersModel _self;
  final $Res Function(_AttendanceFiltersModel) _then;

/// Create a copy of AttendanceFiltersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? department = freezed,Object? position = freezed,}) {
  return _then(_AttendanceFiltersModel(
department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
