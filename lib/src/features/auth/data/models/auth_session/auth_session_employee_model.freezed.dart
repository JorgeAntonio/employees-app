// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session_employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthSessionEmployeeModel {

 String get id; String get userId; String get firstName; String get lastName; String get dni; String? get phone; String? get photoUrl; String get position; String get department; String? get shiftId;
/// Create a copy of AuthSessionEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSessionEmployeeModelCopyWith<AuthSessionEmployeeModel> get copyWith => _$AuthSessionEmployeeModelCopyWithImpl<AuthSessionEmployeeModel>(this as AuthSessionEmployeeModel, _$identity);

  /// Serializes this AuthSessionEmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSessionEmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,firstName,lastName,dni,phone,photoUrl,position,department,shiftId);

@override
String toString() {
  return 'AuthSessionEmployeeModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId)';
}


}

/// @nodoc
abstract mixin class $AuthSessionEmployeeModelCopyWith<$Res>  {
  factory $AuthSessionEmployeeModelCopyWith(AuthSessionEmployeeModel value, $Res Function(AuthSessionEmployeeModel) _then) = _$AuthSessionEmployeeModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId
});




}
/// @nodoc
class _$AuthSessionEmployeeModelCopyWithImpl<$Res>
    implements $AuthSessionEmployeeModelCopyWith<$Res> {
  _$AuthSessionEmployeeModelCopyWithImpl(this._self, this._then);

  final AuthSessionEmployeeModel _self;
  final $Res Function(AuthSessionEmployeeModel) _then;

/// Create a copy of AuthSessionEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthSessionEmployeeModel].
extension AuthSessionEmployeeModelPatterns on AuthSessionEmployeeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSessionEmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSessionEmployeeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSessionEmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthSessionEmployeeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSessionEmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSessionEmployeeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSessionEmployeeModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId)  $default,) {final _that = this;
switch (_that) {
case _AuthSessionEmployeeModel():
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId)?  $default,) {final _that = this;
switch (_that) {
case _AuthSessionEmployeeModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthSessionEmployeeModel implements AuthSessionEmployeeModel {
  const _AuthSessionEmployeeModel({required this.id, required this.userId, required this.firstName, required this.lastName, required this.dni, this.phone, this.photoUrl, required this.position, required this.department, this.shiftId});
  factory _AuthSessionEmployeeModel.fromJson(Map<String, dynamic> json) => _$AuthSessionEmployeeModelFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String firstName;
@override final  String lastName;
@override final  String dni;
@override final  String? phone;
@override final  String? photoUrl;
@override final  String position;
@override final  String department;
@override final  String? shiftId;

/// Create a copy of AuthSessionEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSessionEmployeeModelCopyWith<_AuthSessionEmployeeModel> get copyWith => __$AuthSessionEmployeeModelCopyWithImpl<_AuthSessionEmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthSessionEmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSessionEmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,firstName,lastName,dni,phone,photoUrl,position,department,shiftId);

@override
String toString() {
  return 'AuthSessionEmployeeModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId)';
}


}

/// @nodoc
abstract mixin class _$AuthSessionEmployeeModelCopyWith<$Res> implements $AuthSessionEmployeeModelCopyWith<$Res> {
  factory _$AuthSessionEmployeeModelCopyWith(_AuthSessionEmployeeModel value, $Res Function(_AuthSessionEmployeeModel) _then) = __$AuthSessionEmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId
});




}
/// @nodoc
class __$AuthSessionEmployeeModelCopyWithImpl<$Res>
    implements _$AuthSessionEmployeeModelCopyWith<$Res> {
  __$AuthSessionEmployeeModelCopyWithImpl(this._self, this._then);

  final _AuthSessionEmployeeModel _self;
  final $Res Function(_AuthSessionEmployeeModel) _then;

/// Create a copy of AuthSessionEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,}) {
  return _then(_AuthSessionEmployeeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,shiftId: freezed == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
