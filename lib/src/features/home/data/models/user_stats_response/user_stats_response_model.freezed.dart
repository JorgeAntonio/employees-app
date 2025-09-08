// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stats_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserStatsResponseModel {

 bool get success; UserStatsDataModel? get data; String? get message;
/// Create a copy of UserStatsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStatsResponseModelCopyWith<UserStatsResponseModel> get copyWith => _$UserStatsResponseModelCopyWithImpl<UserStatsResponseModel>(this as UserStatsResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStatsResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'UserStatsResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $UserStatsResponseModelCopyWith<$Res>  {
  factory $UserStatsResponseModelCopyWith(UserStatsResponseModel value, $Res Function(UserStatsResponseModel) _then) = _$UserStatsResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, UserStatsDataModel? data, String? message
});


$UserStatsDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$UserStatsResponseModelCopyWithImpl<$Res>
    implements $UserStatsResponseModelCopyWith<$Res> {
  _$UserStatsResponseModelCopyWithImpl(this._self, this._then);

  final UserStatsResponseModel _self;
  final $Res Function(UserStatsResponseModel) _then;

/// Create a copy of UserStatsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserStatsDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserStatsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserStatsDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserStatsDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserStatsResponseModel].
extension UserStatsResponseModelPatterns on UserStatsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserStatsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserStatsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserStatsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UserStatsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserStatsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserStatsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  UserStatsDataModel? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserStatsResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  UserStatsDataModel? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _UserStatsResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  UserStatsDataModel? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _UserStatsResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _UserStatsResponseModel implements UserStatsResponseModel {
  const _UserStatsResponseModel({required this.success, this.data, this.message});
  

@override final  bool success;
@override final  UserStatsDataModel? data;
@override final  String? message;

/// Create a copy of UserStatsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStatsResponseModelCopyWith<_UserStatsResponseModel> get copyWith => __$UserStatsResponseModelCopyWithImpl<_UserStatsResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserStatsResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'UserStatsResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserStatsResponseModelCopyWith<$Res> implements $UserStatsResponseModelCopyWith<$Res> {
  factory _$UserStatsResponseModelCopyWith(_UserStatsResponseModel value, $Res Function(_UserStatsResponseModel) _then) = __$UserStatsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, UserStatsDataModel? data, String? message
});


@override $UserStatsDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$UserStatsResponseModelCopyWithImpl<$Res>
    implements _$UserStatsResponseModelCopyWith<$Res> {
  __$UserStatsResponseModelCopyWithImpl(this._self, this._then);

  final _UserStatsResponseModel _self;
  final $Res Function(_UserStatsResponseModel) _then;

/// Create a copy of UserStatsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_UserStatsResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserStatsDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserStatsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserStatsDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserStatsDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$UserStatsDataModel {

 PeriodModel get period; EmployeeInfoModel? get employee; StatisticsModel get statistics; List<RecentAttendanceModel> get recentAttendances;
/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStatsDataModelCopyWith<UserStatsDataModel> get copyWith => _$UserStatsDataModelCopyWithImpl<UserStatsDataModel>(this as UserStatsDataModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStatsDataModel&&(identical(other.period, period) || other.period == period)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.statistics, statistics) || other.statistics == statistics)&&const DeepCollectionEquality().equals(other.recentAttendances, recentAttendances));
}


@override
int get hashCode => Object.hash(runtimeType,period,employee,statistics,const DeepCollectionEquality().hash(recentAttendances));

@override
String toString() {
  return 'UserStatsDataModel(period: $period, employee: $employee, statistics: $statistics, recentAttendances: $recentAttendances)';
}


}

/// @nodoc
abstract mixin class $UserStatsDataModelCopyWith<$Res>  {
  factory $UserStatsDataModelCopyWith(UserStatsDataModel value, $Res Function(UserStatsDataModel) _then) = _$UserStatsDataModelCopyWithImpl;
@useResult
$Res call({
 PeriodModel period, EmployeeInfoModel? employee, StatisticsModel statistics, List<RecentAttendanceModel> recentAttendances
});


$PeriodModelCopyWith<$Res> get period;$EmployeeInfoModelCopyWith<$Res>? get employee;$StatisticsModelCopyWith<$Res> get statistics;

}
/// @nodoc
class _$UserStatsDataModelCopyWithImpl<$Res>
    implements $UserStatsDataModelCopyWith<$Res> {
  _$UserStatsDataModelCopyWithImpl(this._self, this._then);

  final UserStatsDataModel _self;
  final $Res Function(UserStatsDataModel) _then;

/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? period = null,Object? employee = freezed,Object? statistics = null,Object? recentAttendances = null,}) {
  return _then(_self.copyWith(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodModel,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeInfoModel?,statistics: null == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as StatisticsModel,recentAttendances: null == recentAttendances ? _self.recentAttendances : recentAttendances // ignore: cast_nullable_to_non_nullable
as List<RecentAttendanceModel>,
  ));
}
/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodModelCopyWith<$Res> get period {
  
  return $PeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeInfoModelCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeInfoModelCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatisticsModelCopyWith<$Res> get statistics {
  
  return $StatisticsModelCopyWith<$Res>(_self.statistics, (value) {
    return _then(_self.copyWith(statistics: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserStatsDataModel].
extension UserStatsDataModelPatterns on UserStatsDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserStatsDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserStatsDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserStatsDataModel value)  $default,){
final _that = this;
switch (_that) {
case _UserStatsDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserStatsDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserStatsDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PeriodModel period,  EmployeeInfoModel? employee,  StatisticsModel statistics,  List<RecentAttendanceModel> recentAttendances)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserStatsDataModel() when $default != null:
return $default(_that.period,_that.employee,_that.statistics,_that.recentAttendances);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PeriodModel period,  EmployeeInfoModel? employee,  StatisticsModel statistics,  List<RecentAttendanceModel> recentAttendances)  $default,) {final _that = this;
switch (_that) {
case _UserStatsDataModel():
return $default(_that.period,_that.employee,_that.statistics,_that.recentAttendances);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PeriodModel period,  EmployeeInfoModel? employee,  StatisticsModel statistics,  List<RecentAttendanceModel> recentAttendances)?  $default,) {final _that = this;
switch (_that) {
case _UserStatsDataModel() when $default != null:
return $default(_that.period,_that.employee,_that.statistics,_that.recentAttendances);case _:
  return null;

}
}

}

/// @nodoc


class _UserStatsDataModel implements UserStatsDataModel {
  const _UserStatsDataModel({required this.period, this.employee, required this.statistics, required final  List<RecentAttendanceModel> recentAttendances}): _recentAttendances = recentAttendances;
  

@override final  PeriodModel period;
@override final  EmployeeInfoModel? employee;
@override final  StatisticsModel statistics;
 final  List<RecentAttendanceModel> _recentAttendances;
@override List<RecentAttendanceModel> get recentAttendances {
  if (_recentAttendances is EqualUnmodifiableListView) return _recentAttendances;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentAttendances);
}


/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStatsDataModelCopyWith<_UserStatsDataModel> get copyWith => __$UserStatsDataModelCopyWithImpl<_UserStatsDataModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserStatsDataModel&&(identical(other.period, period) || other.period == period)&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.statistics, statistics) || other.statistics == statistics)&&const DeepCollectionEquality().equals(other._recentAttendances, _recentAttendances));
}


@override
int get hashCode => Object.hash(runtimeType,period,employee,statistics,const DeepCollectionEquality().hash(_recentAttendances));

@override
String toString() {
  return 'UserStatsDataModel(period: $period, employee: $employee, statistics: $statistics, recentAttendances: $recentAttendances)';
}


}

/// @nodoc
abstract mixin class _$UserStatsDataModelCopyWith<$Res> implements $UserStatsDataModelCopyWith<$Res> {
  factory _$UserStatsDataModelCopyWith(_UserStatsDataModel value, $Res Function(_UserStatsDataModel) _then) = __$UserStatsDataModelCopyWithImpl;
@override @useResult
$Res call({
 PeriodModel period, EmployeeInfoModel? employee, StatisticsModel statistics, List<RecentAttendanceModel> recentAttendances
});


@override $PeriodModelCopyWith<$Res> get period;@override $EmployeeInfoModelCopyWith<$Res>? get employee;@override $StatisticsModelCopyWith<$Res> get statistics;

}
/// @nodoc
class __$UserStatsDataModelCopyWithImpl<$Res>
    implements _$UserStatsDataModelCopyWith<$Res> {
  __$UserStatsDataModelCopyWithImpl(this._self, this._then);

  final _UserStatsDataModel _self;
  final $Res Function(_UserStatsDataModel) _then;

/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? period = null,Object? employee = freezed,Object? statistics = null,Object? recentAttendances = null,}) {
  return _then(_UserStatsDataModel(
period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as PeriodModel,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeInfoModel?,statistics: null == statistics ? _self.statistics : statistics // ignore: cast_nullable_to_non_nullable
as StatisticsModel,recentAttendances: null == recentAttendances ? _self._recentAttendances : recentAttendances // ignore: cast_nullable_to_non_nullable
as List<RecentAttendanceModel>,
  ));
}

/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodModelCopyWith<$Res> get period {
  
  return $PeriodModelCopyWith<$Res>(_self.period, (value) {
    return _then(_self.copyWith(period: value));
  });
}/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeInfoModelCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeInfoModelCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}/// Create a copy of UserStatsDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatisticsModelCopyWith<$Res> get statistics {
  
  return $StatisticsModelCopyWith<$Res>(_self.statistics, (value) {
    return _then(_self.copyWith(statistics: value));
  });
}
}

/// @nodoc
mixin _$PeriodModel {

 String get startDate; String get endDate; int get days;
/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeriodModelCopyWith<PeriodModel> get copyWith => _$PeriodModelCopyWithImpl<PeriodModel>(this as PeriodModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeriodModel&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.days, days) || other.days == days));
}


@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,days);

@override
String toString() {
  return 'PeriodModel(startDate: $startDate, endDate: $endDate, days: $days)';
}


}

/// @nodoc
abstract mixin class $PeriodModelCopyWith<$Res>  {
  factory $PeriodModelCopyWith(PeriodModel value, $Res Function(PeriodModel) _then) = _$PeriodModelCopyWithImpl;
@useResult
$Res call({
 String startDate, String endDate, int days
});




}
/// @nodoc
class _$PeriodModelCopyWithImpl<$Res>
    implements $PeriodModelCopyWith<$Res> {
  _$PeriodModelCopyWithImpl(this._self, this._then);

  final PeriodModel _self;
  final $Res Function(PeriodModel) _then;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startDate = null,Object? endDate = null,Object? days = null,}) {
  return _then(_self.copyWith(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PeriodModel].
extension PeriodModelPatterns on PeriodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeriodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeriodModel value)  $default,){
final _that = this;
switch (_that) {
case _PeriodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeriodModel value)?  $default,){
final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String startDate,  String endDate,  int days)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String startDate,  String endDate,  int days)  $default,) {final _that = this;
switch (_that) {
case _PeriodModel():
return $default(_that.startDate,_that.endDate,_that.days);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String startDate,  String endDate,  int days)?  $default,) {final _that = this;
switch (_that) {
case _PeriodModel() when $default != null:
return $default(_that.startDate,_that.endDate,_that.days);case _:
  return null;

}
}

}

/// @nodoc


class _PeriodModel implements PeriodModel {
  const _PeriodModel({required this.startDate, required this.endDate, required this.days});
  

@override final  String startDate;
@override final  String endDate;
@override final  int days;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodModelCopyWith<_PeriodModel> get copyWith => __$PeriodModelCopyWithImpl<_PeriodModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeriodModel&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.days, days) || other.days == days));
}


@override
int get hashCode => Object.hash(runtimeType,startDate,endDate,days);

@override
String toString() {
  return 'PeriodModel(startDate: $startDate, endDate: $endDate, days: $days)';
}


}

/// @nodoc
abstract mixin class _$PeriodModelCopyWith<$Res> implements $PeriodModelCopyWith<$Res> {
  factory _$PeriodModelCopyWith(_PeriodModel value, $Res Function(_PeriodModel) _then) = __$PeriodModelCopyWithImpl;
@override @useResult
$Res call({
 String startDate, String endDate, int days
});




}
/// @nodoc
class __$PeriodModelCopyWithImpl<$Res>
    implements _$PeriodModelCopyWith<$Res> {
  __$PeriodModelCopyWithImpl(this._self, this._then);

  final _PeriodModel _self;
  final $Res Function(_PeriodModel) _then;

/// Create a copy of PeriodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startDate = null,Object? endDate = null,Object? days = null,}) {
  return _then(_PeriodModel(
startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$EmployeeInfoModel {

 String get id; String get firstName; String get lastName; String get department; String get position; ShiftModel? get shift;
/// Create a copy of EmployeeInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeInfoModelCopyWith<EmployeeInfoModel> get copyWith => _$EmployeeInfoModelCopyWithImpl<EmployeeInfoModel>(this as EmployeeInfoModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position)&&(identical(other.shift, shift) || other.shift == shift));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,department,position,shift);

@override
String toString() {
  return 'EmployeeInfoModel(id: $id, firstName: $firstName, lastName: $lastName, department: $department, position: $position, shift: $shift)';
}


}

/// @nodoc
abstract mixin class $EmployeeInfoModelCopyWith<$Res>  {
  factory $EmployeeInfoModelCopyWith(EmployeeInfoModel value, $Res Function(EmployeeInfoModel) _then) = _$EmployeeInfoModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String department, String position, ShiftModel? shift
});


$ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class _$EmployeeInfoModelCopyWithImpl<$Res>
    implements $EmployeeInfoModelCopyWith<$Res> {
  _$EmployeeInfoModelCopyWithImpl(this._self, this._then);

  final EmployeeInfoModel _self;
  final $Res Function(EmployeeInfoModel) _then;

/// Create a copy of EmployeeInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? department = null,Object? position = null,Object? shift = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}
/// Create a copy of EmployeeInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<$Res>? get shift {
    if (_self.shift == null) {
    return null;
  }

  return $ShiftModelCopyWith<$Res>(_self.shift!, (value) {
    return _then(_self.copyWith(shift: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeeInfoModel].
extension EmployeeInfoModelPatterns on EmployeeInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String department,  String position,  ShiftModel? shift)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeInfoModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.department,_that.position,_that.shift);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String department,  String position,  ShiftModel? shift)  $default,) {final _that = this;
switch (_that) {
case _EmployeeInfoModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.department,_that.position,_that.shift);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String department,  String position,  ShiftModel? shift)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeInfoModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.department,_that.position,_that.shift);case _:
  return null;

}
}

}

/// @nodoc


class _EmployeeInfoModel implements EmployeeInfoModel {
  const _EmployeeInfoModel({required this.id, required this.firstName, required this.lastName, required this.department, required this.position, this.shift});
  

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String department;
@override final  String position;
@override final  ShiftModel? shift;

/// Create a copy of EmployeeInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeInfoModelCopyWith<_EmployeeInfoModel> get copyWith => __$EmployeeInfoModelCopyWithImpl<_EmployeeInfoModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position)&&(identical(other.shift, shift) || other.shift == shift));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,department,position,shift);

@override
String toString() {
  return 'EmployeeInfoModel(id: $id, firstName: $firstName, lastName: $lastName, department: $department, position: $position, shift: $shift)';
}


}

/// @nodoc
abstract mixin class _$EmployeeInfoModelCopyWith<$Res> implements $EmployeeInfoModelCopyWith<$Res> {
  factory _$EmployeeInfoModelCopyWith(_EmployeeInfoModel value, $Res Function(_EmployeeInfoModel) _then) = __$EmployeeInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String department, String position, ShiftModel? shift
});


@override $ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class __$EmployeeInfoModelCopyWithImpl<$Res>
    implements _$EmployeeInfoModelCopyWith<$Res> {
  __$EmployeeInfoModelCopyWithImpl(this._self, this._then);

  final _EmployeeInfoModel _self;
  final $Res Function(_EmployeeInfoModel) _then;

/// Create a copy of EmployeeInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? department = null,Object? position = null,Object? shift = freezed,}) {
  return _then(_EmployeeInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}

/// Create a copy of EmployeeInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<$Res>? get shift {
    if (_self.shift == null) {
    return null;
  }

  return $ShiftModelCopyWith<$Res>(_self.shift!, (value) {
    return _then(_self.copyWith(shift: value));
  });
}
}

/// @nodoc
mixin _$ShiftModel {

 String get name; DateTime get startTime; DateTime get endTime;
/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<ShiftModel> get copyWith => _$ShiftModelCopyWithImpl<ShiftModel>(this as ShiftModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftModel&&(identical(other.name, name) || other.name == name)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,name,startTime,endTime);

@override
String toString() {
  return 'ShiftModel(name: $name, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $ShiftModelCopyWith<$Res>  {
  factory $ShiftModelCopyWith(ShiftModel value, $Res Function(ShiftModel) _then) = _$ShiftModelCopyWithImpl;
@useResult
$Res call({
 String name, DateTime startTime, DateTime endTime
});




}
/// @nodoc
class _$ShiftModelCopyWithImpl<$Res>
    implements $ShiftModelCopyWith<$Res> {
  _$ShiftModelCopyWithImpl(this._self, this._then);

  final ShiftModel _self;
  final $Res Function(ShiftModel) _then;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftModel].
extension ShiftModelPatterns on ShiftModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftModel value)  $default,){
final _that = this;
switch (_that) {
case _ShiftModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  DateTime startTime,  DateTime endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.name,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  DateTime startTime,  DateTime endTime)  $default,) {final _that = this;
switch (_that) {
case _ShiftModel():
return $default(_that.name,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  DateTime startTime,  DateTime endTime)?  $default,) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.name,_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc


class _ShiftModel implements ShiftModel {
  const _ShiftModel({required this.name, required this.startTime, required this.endTime});
  

@override final  String name;
@override final  DateTime startTime;
@override final  DateTime endTime;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftModelCopyWith<_ShiftModel> get copyWith => __$ShiftModelCopyWithImpl<_ShiftModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftModel&&(identical(other.name, name) || other.name == name)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}


@override
int get hashCode => Object.hash(runtimeType,name,startTime,endTime);

@override
String toString() {
  return 'ShiftModel(name: $name, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$ShiftModelCopyWith<$Res> implements $ShiftModelCopyWith<$Res> {
  factory _$ShiftModelCopyWith(_ShiftModel value, $Res Function(_ShiftModel) _then) = __$ShiftModelCopyWithImpl;
@override @useResult
$Res call({
 String name, DateTime startTime, DateTime endTime
});




}
/// @nodoc
class __$ShiftModelCopyWithImpl<$Res>
    implements _$ShiftModelCopyWith<$Res> {
  __$ShiftModelCopyWithImpl(this._self, this._then);

  final _ShiftModel _self;
  final $Res Function(_ShiftModel) _then;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_ShiftModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$StatisticsModel {

 int get totalDays; int get presences; int get absences; int get lateArrivals; int get justified; double get punctualityRate; double get averageHours; double get attendanceRate;
/// Create a copy of StatisticsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatisticsModelCopyWith<StatisticsModel> get copyWith => _$StatisticsModelCopyWithImpl<StatisticsModel>(this as StatisticsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatisticsModel&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.presences, presences) || other.presences == presences)&&(identical(other.absences, absences) || other.absences == absences)&&(identical(other.lateArrivals, lateArrivals) || other.lateArrivals == lateArrivals)&&(identical(other.justified, justified) || other.justified == justified)&&(identical(other.punctualityRate, punctualityRate) || other.punctualityRate == punctualityRate)&&(identical(other.averageHours, averageHours) || other.averageHours == averageHours)&&(identical(other.attendanceRate, attendanceRate) || other.attendanceRate == attendanceRate));
}


@override
int get hashCode => Object.hash(runtimeType,totalDays,presences,absences,lateArrivals,justified,punctualityRate,averageHours,attendanceRate);

@override
String toString() {
  return 'StatisticsModel(totalDays: $totalDays, presences: $presences, absences: $absences, lateArrivals: $lateArrivals, justified: $justified, punctualityRate: $punctualityRate, averageHours: $averageHours, attendanceRate: $attendanceRate)';
}


}

/// @nodoc
abstract mixin class $StatisticsModelCopyWith<$Res>  {
  factory $StatisticsModelCopyWith(StatisticsModel value, $Res Function(StatisticsModel) _then) = _$StatisticsModelCopyWithImpl;
@useResult
$Res call({
 int totalDays, int presences, int absences, int lateArrivals, int justified, double punctualityRate, double averageHours, double attendanceRate
});




}
/// @nodoc
class _$StatisticsModelCopyWithImpl<$Res>
    implements $StatisticsModelCopyWith<$Res> {
  _$StatisticsModelCopyWithImpl(this._self, this._then);

  final StatisticsModel _self;
  final $Res Function(StatisticsModel) _then;

/// Create a copy of StatisticsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalDays = null,Object? presences = null,Object? absences = null,Object? lateArrivals = null,Object? justified = null,Object? punctualityRate = null,Object? averageHours = null,Object? attendanceRate = null,}) {
  return _then(_self.copyWith(
totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int,presences: null == presences ? _self.presences : presences // ignore: cast_nullable_to_non_nullable
as int,absences: null == absences ? _self.absences : absences // ignore: cast_nullable_to_non_nullable
as int,lateArrivals: null == lateArrivals ? _self.lateArrivals : lateArrivals // ignore: cast_nullable_to_non_nullable
as int,justified: null == justified ? _self.justified : justified // ignore: cast_nullable_to_non_nullable
as int,punctualityRate: null == punctualityRate ? _self.punctualityRate : punctualityRate // ignore: cast_nullable_to_non_nullable
as double,averageHours: null == averageHours ? _self.averageHours : averageHours // ignore: cast_nullable_to_non_nullable
as double,attendanceRate: null == attendanceRate ? _self.attendanceRate : attendanceRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StatisticsModel].
extension StatisticsModelPatterns on StatisticsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatisticsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatisticsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatisticsModel value)  $default,){
final _that = this;
switch (_that) {
case _StatisticsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatisticsModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatisticsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalDays,  int presences,  int absences,  int lateArrivals,  int justified,  double punctualityRate,  double averageHours,  double attendanceRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatisticsModel() when $default != null:
return $default(_that.totalDays,_that.presences,_that.absences,_that.lateArrivals,_that.justified,_that.punctualityRate,_that.averageHours,_that.attendanceRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalDays,  int presences,  int absences,  int lateArrivals,  int justified,  double punctualityRate,  double averageHours,  double attendanceRate)  $default,) {final _that = this;
switch (_that) {
case _StatisticsModel():
return $default(_that.totalDays,_that.presences,_that.absences,_that.lateArrivals,_that.justified,_that.punctualityRate,_that.averageHours,_that.attendanceRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalDays,  int presences,  int absences,  int lateArrivals,  int justified,  double punctualityRate,  double averageHours,  double attendanceRate)?  $default,) {final _that = this;
switch (_that) {
case _StatisticsModel() when $default != null:
return $default(_that.totalDays,_that.presences,_that.absences,_that.lateArrivals,_that.justified,_that.punctualityRate,_that.averageHours,_that.attendanceRate);case _:
  return null;

}
}

}

/// @nodoc


class _StatisticsModel implements StatisticsModel {
  const _StatisticsModel({required this.totalDays, required this.presences, required this.absences, required this.lateArrivals, required this.justified, required this.punctualityRate, required this.averageHours, required this.attendanceRate});
  

@override final  int totalDays;
@override final  int presences;
@override final  int absences;
@override final  int lateArrivals;
@override final  int justified;
@override final  double punctualityRate;
@override final  double averageHours;
@override final  double attendanceRate;

/// Create a copy of StatisticsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatisticsModelCopyWith<_StatisticsModel> get copyWith => __$StatisticsModelCopyWithImpl<_StatisticsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatisticsModel&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.presences, presences) || other.presences == presences)&&(identical(other.absences, absences) || other.absences == absences)&&(identical(other.lateArrivals, lateArrivals) || other.lateArrivals == lateArrivals)&&(identical(other.justified, justified) || other.justified == justified)&&(identical(other.punctualityRate, punctualityRate) || other.punctualityRate == punctualityRate)&&(identical(other.averageHours, averageHours) || other.averageHours == averageHours)&&(identical(other.attendanceRate, attendanceRate) || other.attendanceRate == attendanceRate));
}


@override
int get hashCode => Object.hash(runtimeType,totalDays,presences,absences,lateArrivals,justified,punctualityRate,averageHours,attendanceRate);

@override
String toString() {
  return 'StatisticsModel(totalDays: $totalDays, presences: $presences, absences: $absences, lateArrivals: $lateArrivals, justified: $justified, punctualityRate: $punctualityRate, averageHours: $averageHours, attendanceRate: $attendanceRate)';
}


}

/// @nodoc
abstract mixin class _$StatisticsModelCopyWith<$Res> implements $StatisticsModelCopyWith<$Res> {
  factory _$StatisticsModelCopyWith(_StatisticsModel value, $Res Function(_StatisticsModel) _then) = __$StatisticsModelCopyWithImpl;
@override @useResult
$Res call({
 int totalDays, int presences, int absences, int lateArrivals, int justified, double punctualityRate, double averageHours, double attendanceRate
});




}
/// @nodoc
class __$StatisticsModelCopyWithImpl<$Res>
    implements _$StatisticsModelCopyWith<$Res> {
  __$StatisticsModelCopyWithImpl(this._self, this._then);

  final _StatisticsModel _self;
  final $Res Function(_StatisticsModel) _then;

/// Create a copy of StatisticsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalDays = null,Object? presences = null,Object? absences = null,Object? lateArrivals = null,Object? justified = null,Object? punctualityRate = null,Object? averageHours = null,Object? attendanceRate = null,}) {
  return _then(_StatisticsModel(
totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as int,presences: null == presences ? _self.presences : presences // ignore: cast_nullable_to_non_nullable
as int,absences: null == absences ? _self.absences : absences // ignore: cast_nullable_to_non_nullable
as int,lateArrivals: null == lateArrivals ? _self.lateArrivals : lateArrivals // ignore: cast_nullable_to_non_nullable
as int,justified: null == justified ? _self.justified : justified // ignore: cast_nullable_to_non_nullable
as int,punctualityRate: null == punctualityRate ? _self.punctualityRate : punctualityRate // ignore: cast_nullable_to_non_nullable
as double,averageHours: null == averageHours ? _self.averageHours : averageHours // ignore: cast_nullable_to_non_nullable
as double,attendanceRate: null == attendanceRate ? _self.attendanceRate : attendanceRate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$RecentAttendanceModel {

 DateTime get date; DateTime get checkInTime; DateTime? get checkOutTime; String get status; int? get durationMins;
/// Create a copy of RecentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentAttendanceModelCopyWith<RecentAttendanceModel> get copyWith => _$RecentAttendanceModelCopyWithImpl<RecentAttendanceModel>(this as RecentAttendanceModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentAttendanceModel&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins));
}


@override
int get hashCode => Object.hash(runtimeType,date,checkInTime,checkOutTime,status,durationMins);

@override
String toString() {
  return 'RecentAttendanceModel(date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, status: $status, durationMins: $durationMins)';
}


}

/// @nodoc
abstract mixin class $RecentAttendanceModelCopyWith<$Res>  {
  factory $RecentAttendanceModelCopyWith(RecentAttendanceModel value, $Res Function(RecentAttendanceModel) _then) = _$RecentAttendanceModelCopyWithImpl;
@useResult
$Res call({
 DateTime date, DateTime checkInTime, DateTime? checkOutTime, String status, int? durationMins
});




}
/// @nodoc
class _$RecentAttendanceModelCopyWithImpl<$Res>
    implements $RecentAttendanceModelCopyWith<$Res> {
  _$RecentAttendanceModelCopyWithImpl(this._self, this._then);

  final RecentAttendanceModel _self;
  final $Res Function(RecentAttendanceModel) _then;

/// Create a copy of RecentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? checkInTime = null,Object? checkOutTime = freezed,Object? status = null,Object? durationMins = freezed,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,checkInTime: null == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,durationMins: freezed == durationMins ? _self.durationMins : durationMins // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentAttendanceModel].
extension RecentAttendanceModelPatterns on RecentAttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentAttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentAttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _RecentAttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentAttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecentAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime date,  DateTime checkInTime,  DateTime? checkOutTime,  String status,  int? durationMins)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentAttendanceModel() when $default != null:
return $default(_that.date,_that.checkInTime,_that.checkOutTime,_that.status,_that.durationMins);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime date,  DateTime checkInTime,  DateTime? checkOutTime,  String status,  int? durationMins)  $default,) {final _that = this;
switch (_that) {
case _RecentAttendanceModel():
return $default(_that.date,_that.checkInTime,_that.checkOutTime,_that.status,_that.durationMins);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime date,  DateTime checkInTime,  DateTime? checkOutTime,  String status,  int? durationMins)?  $default,) {final _that = this;
switch (_that) {
case _RecentAttendanceModel() when $default != null:
return $default(_that.date,_that.checkInTime,_that.checkOutTime,_that.status,_that.durationMins);case _:
  return null;

}
}

}

/// @nodoc


class _RecentAttendanceModel implements RecentAttendanceModel {
  const _RecentAttendanceModel({required this.date, required this.checkInTime, this.checkOutTime, required this.status, this.durationMins});
  

@override final  DateTime date;
@override final  DateTime checkInTime;
@override final  DateTime? checkOutTime;
@override final  String status;
@override final  int? durationMins;

/// Create a copy of RecentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentAttendanceModelCopyWith<_RecentAttendanceModel> get copyWith => __$RecentAttendanceModelCopyWithImpl<_RecentAttendanceModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentAttendanceModel&&(identical(other.date, date) || other.date == date)&&(identical(other.checkInTime, checkInTime) || other.checkInTime == checkInTime)&&(identical(other.checkOutTime, checkOutTime) || other.checkOutTime == checkOutTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.durationMins, durationMins) || other.durationMins == durationMins));
}


@override
int get hashCode => Object.hash(runtimeType,date,checkInTime,checkOutTime,status,durationMins);

@override
String toString() {
  return 'RecentAttendanceModel(date: $date, checkInTime: $checkInTime, checkOutTime: $checkOutTime, status: $status, durationMins: $durationMins)';
}


}

/// @nodoc
abstract mixin class _$RecentAttendanceModelCopyWith<$Res> implements $RecentAttendanceModelCopyWith<$Res> {
  factory _$RecentAttendanceModelCopyWith(_RecentAttendanceModel value, $Res Function(_RecentAttendanceModel) _then) = __$RecentAttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, DateTime checkInTime, DateTime? checkOutTime, String status, int? durationMins
});




}
/// @nodoc
class __$RecentAttendanceModelCopyWithImpl<$Res>
    implements _$RecentAttendanceModelCopyWith<$Res> {
  __$RecentAttendanceModelCopyWithImpl(this._self, this._then);

  final _RecentAttendanceModel _self;
  final $Res Function(_RecentAttendanceModel) _then;

/// Create a copy of RecentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? checkInTime = null,Object? checkOutTime = freezed,Object? status = null,Object? durationMins = freezed,}) {
  return _then(_RecentAttendanceModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,checkInTime: null == checkInTime ? _self.checkInTime : checkInTime // ignore: cast_nullable_to_non_nullable
as DateTime,checkOutTime: freezed == checkOutTime ? _self.checkOutTime : checkOutTime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,durationMins: freezed == durationMins ? _self.durationMins : durationMins // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
