// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_code_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidateCodeDataModel {

 EmployeeModel get employee; String get action; DateTime get timestamp;
/// Create a copy of ValidateCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateCodeDataModelCopyWith<ValidateCodeDataModel> get copyWith => _$ValidateCodeDataModelCopyWithImpl<ValidateCodeDataModel>(this as ValidateCodeDataModel, _$identity);

  /// Serializes this ValidateCodeDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateCodeDataModel&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.action, action) || other.action == action)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employee,action,timestamp);

@override
String toString() {
  return 'ValidateCodeDataModel(employee: $employee, action: $action, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $ValidateCodeDataModelCopyWith<$Res>  {
  factory $ValidateCodeDataModelCopyWith(ValidateCodeDataModel value, $Res Function(ValidateCodeDataModel) _then) = _$ValidateCodeDataModelCopyWithImpl;
@useResult
$Res call({
 EmployeeModel employee, String action, DateTime timestamp
});


$EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class _$ValidateCodeDataModelCopyWithImpl<$Res>
    implements $ValidateCodeDataModelCopyWith<$Res> {
  _$ValidateCodeDataModelCopyWithImpl(this._self, this._then);

  final ValidateCodeDataModel _self;
  final $Res Function(ValidateCodeDataModel) _then;

/// Create a copy of ValidateCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employee = null,Object? action = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of ValidateCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<$Res> get employee {
  
  return $EmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// Adds pattern-matching-related methods to [ValidateCodeDataModel].
extension ValidateCodeDataModelPatterns on ValidateCodeDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidateCodeDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidateCodeDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidateCodeDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ValidateCodeDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidateCodeDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ValidateCodeDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmployeeModel employee,  String action,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidateCodeDataModel() when $default != null:
return $default(_that.employee,_that.action,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmployeeModel employee,  String action,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _ValidateCodeDataModel():
return $default(_that.employee,_that.action,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmployeeModel employee,  String action,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ValidateCodeDataModel() when $default != null:
return $default(_that.employee,_that.action,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidateCodeDataModel implements ValidateCodeDataModel {
  const _ValidateCodeDataModel({required this.employee, required this.action, required this.timestamp});
  factory _ValidateCodeDataModel.fromJson(Map<String, dynamic> json) => _$ValidateCodeDataModelFromJson(json);

@override final  EmployeeModel employee;
@override final  String action;
@override final  DateTime timestamp;

/// Create a copy of ValidateCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidateCodeDataModelCopyWith<_ValidateCodeDataModel> get copyWith => __$ValidateCodeDataModelCopyWithImpl<_ValidateCodeDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidateCodeDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidateCodeDataModel&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.action, action) || other.action == action)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employee,action,timestamp);

@override
String toString() {
  return 'ValidateCodeDataModel(employee: $employee, action: $action, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ValidateCodeDataModelCopyWith<$Res> implements $ValidateCodeDataModelCopyWith<$Res> {
  factory _$ValidateCodeDataModelCopyWith(_ValidateCodeDataModel value, $Res Function(_ValidateCodeDataModel) _then) = __$ValidateCodeDataModelCopyWithImpl;
@override @useResult
$Res call({
 EmployeeModel employee, String action, DateTime timestamp
});


@override $EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class __$ValidateCodeDataModelCopyWithImpl<$Res>
    implements _$ValidateCodeDataModelCopyWith<$Res> {
  __$ValidateCodeDataModelCopyWithImpl(this._self, this._then);

  final _ValidateCodeDataModel _self;
  final $Res Function(_ValidateCodeDataModel) _then;

/// Create a copy of ValidateCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employee = null,Object? action = null,Object? timestamp = null,}) {
  return _then(_ValidateCodeDataModel(
employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of ValidateCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<$Res> get employee {
  
  return $EmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on
