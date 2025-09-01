// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_employee_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateEmployeeRequestModel {

 String? get firstName; String? get lastName; String? get phone; String? get photoUrl; String? get position; String? get department; String? get shiftId;
/// Create a copy of UpdateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmployeeRequestModelCopyWith<UpdateEmployeeRequestModel> get copyWith => _$UpdateEmployeeRequestModelCopyWithImpl<UpdateEmployeeRequestModel>(this as UpdateEmployeeRequestModel, _$identity);

  /// Serializes this UpdateEmployeeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmployeeRequestModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phone,photoUrl,position,department,shiftId);

@override
String toString() {
  return 'UpdateEmployeeRequestModel(firstName: $firstName, lastName: $lastName, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId)';
}


}

/// @nodoc
abstract mixin class $UpdateEmployeeRequestModelCopyWith<$Res>  {
  factory $UpdateEmployeeRequestModelCopyWith(UpdateEmployeeRequestModel value, $Res Function(UpdateEmployeeRequestModel) _then) = _$UpdateEmployeeRequestModelCopyWithImpl;
@useResult
$Res call({
 String? firstName, String? lastName, String? phone, String? photoUrl, String? position, String? department, String? shiftId
});




}
/// @nodoc
class _$UpdateEmployeeRequestModelCopyWithImpl<$Res>
    implements $UpdateEmployeeRequestModelCopyWith<$Res> {
  _$UpdateEmployeeRequestModelCopyWithImpl(this._self, this._then);

  final UpdateEmployeeRequestModel _self;
  final $Res Function(UpdateEmployeeRequestModel) _then;

/// Create a copy of UpdateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? photoUrl = freezed,Object? position = freezed,Object? department = freezed,Object? shiftId = freezed,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateEmployeeRequestModel].
extension UpdateEmployeeRequestModelPatterns on UpdateEmployeeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateEmployeeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateEmployeeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateEmployeeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateEmployeeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateEmployeeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateEmployeeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? phone,  String? photoUrl,  String? position,  String? department,  String? shiftId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateEmployeeRequestModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? firstName,  String? lastName,  String? phone,  String? photoUrl,  String? position,  String? department,  String? shiftId)  $default,) {final _that = this;
switch (_that) {
case _UpdateEmployeeRequestModel():
return $default(_that.firstName,_that.lastName,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? firstName,  String? lastName,  String? phone,  String? photoUrl,  String? position,  String? department,  String? shiftId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateEmployeeRequestModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateEmployeeRequestModel implements UpdateEmployeeRequestModel {
  const _UpdateEmployeeRequestModel({this.firstName, this.lastName, this.phone, this.photoUrl, this.position, this.department, this.shiftId});
  factory _UpdateEmployeeRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateEmployeeRequestModelFromJson(json);

@override final  String? firstName;
@override final  String? lastName;
@override final  String? phone;
@override final  String? photoUrl;
@override final  String? position;
@override final  String? department;
@override final  String? shiftId;

/// Create a copy of UpdateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEmployeeRequestModelCopyWith<_UpdateEmployeeRequestModel> get copyWith => __$UpdateEmployeeRequestModelCopyWithImpl<_UpdateEmployeeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateEmployeeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEmployeeRequestModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phone,photoUrl,position,department,shiftId);

@override
String toString() {
  return 'UpdateEmployeeRequestModel(firstName: $firstName, lastName: $lastName, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId)';
}


}

/// @nodoc
abstract mixin class _$UpdateEmployeeRequestModelCopyWith<$Res> implements $UpdateEmployeeRequestModelCopyWith<$Res> {
  factory _$UpdateEmployeeRequestModelCopyWith(_UpdateEmployeeRequestModel value, $Res Function(_UpdateEmployeeRequestModel) _then) = __$UpdateEmployeeRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, String? lastName, String? phone, String? photoUrl, String? position, String? department, String? shiftId
});




}
/// @nodoc
class __$UpdateEmployeeRequestModelCopyWithImpl<$Res>
    implements _$UpdateEmployeeRequestModelCopyWith<$Res> {
  __$UpdateEmployeeRequestModelCopyWithImpl(this._self, this._then);

  final _UpdateEmployeeRequestModel _self;
  final $Res Function(_UpdateEmployeeRequestModel) _then;

/// Create a copy of UpdateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? photoUrl = freezed,Object? position = freezed,Object? department = freezed,Object? shiftId = freezed,}) {
  return _then(_UpdateEmployeeRequestModel(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
