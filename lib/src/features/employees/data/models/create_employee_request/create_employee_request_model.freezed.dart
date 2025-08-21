// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_employee_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateEmployeeRequestModel {

 String get email; String get password; String get firstName; String get lastName; String get dni; String? get phone; String? get photoUrl; String get position; String get department; String? get shiftId;
/// Create a copy of CreateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateEmployeeRequestModelCopyWith<CreateEmployeeRequestModel> get copyWith => _$CreateEmployeeRequestModelCopyWithImpl<CreateEmployeeRequestModel>(this as CreateEmployeeRequestModel, _$identity);

  /// Serializes this CreateEmployeeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEmployeeRequestModel&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,dni,phone,photoUrl,position,department,shiftId);

@override
String toString() {
  return 'CreateEmployeeRequestModel(email: $email, password: $password, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId)';
}


}

/// @nodoc
abstract mixin class $CreateEmployeeRequestModelCopyWith<$Res>  {
  factory $CreateEmployeeRequestModelCopyWith(CreateEmployeeRequestModel value, $Res Function(CreateEmployeeRequestModel) _then) = _$CreateEmployeeRequestModelCopyWithImpl;
@useResult
$Res call({
 String email, String password, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId
});




}
/// @nodoc
class _$CreateEmployeeRequestModelCopyWithImpl<$Res>
    implements $CreateEmployeeRequestModelCopyWith<$Res> {
  _$CreateEmployeeRequestModelCopyWithImpl(this._self, this._then);

  final CreateEmployeeRequestModel _self;
  final $Res Function(CreateEmployeeRequestModel) _then;

/// Create a copy of CreateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [CreateEmployeeRequestModel].
extension CreateEmployeeRequestModelPatterns on CreateEmployeeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateEmployeeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateEmployeeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateEmployeeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateEmployeeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateEmployeeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateEmployeeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateEmployeeRequestModel() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId)  $default,) {final _that = this;
switch (_that) {
case _CreateEmployeeRequestModel():
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId)?  $default,) {final _that = this;
switch (_that) {
case _CreateEmployeeRequestModel() when $default != null:
return $default(_that.email,_that.password,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateEmployeeRequestModel implements CreateEmployeeRequestModel {
  const _CreateEmployeeRequestModel({required this.email, required this.password, required this.firstName, required this.lastName, required this.dni, this.phone, this.photoUrl, required this.position, required this.department, this.shiftId});
  factory _CreateEmployeeRequestModel.fromJson(Map<String, dynamic> json) => _$CreateEmployeeRequestModelFromJson(json);

@override final  String email;
@override final  String password;
@override final  String firstName;
@override final  String lastName;
@override final  String dni;
@override final  String? phone;
@override final  String? photoUrl;
@override final  String position;
@override final  String department;
@override final  String? shiftId;

/// Create a copy of CreateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateEmployeeRequestModelCopyWith<_CreateEmployeeRequestModel> get copyWith => __$CreateEmployeeRequestModelCopyWithImpl<_CreateEmployeeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateEmployeeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateEmployeeRequestModel&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,firstName,lastName,dni,phone,photoUrl,position,department,shiftId);

@override
String toString() {
  return 'CreateEmployeeRequestModel(email: $email, password: $password, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId)';
}


}

/// @nodoc
abstract mixin class _$CreateEmployeeRequestModelCopyWith<$Res> implements $CreateEmployeeRequestModelCopyWith<$Res> {
  factory _$CreateEmployeeRequestModelCopyWith(_CreateEmployeeRequestModel value, $Res Function(_CreateEmployeeRequestModel) _then) = __$CreateEmployeeRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId
});




}
/// @nodoc
class __$CreateEmployeeRequestModelCopyWithImpl<$Res>
    implements _$CreateEmployeeRequestModelCopyWith<$Res> {
  __$CreateEmployeeRequestModelCopyWithImpl(this._self, this._then);

  final _CreateEmployeeRequestModel _self;
  final $Res Function(_CreateEmployeeRequestModel) _then;

/// Create a copy of CreateEmployeeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,}) {
  return _then(_CreateEmployeeRequestModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
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
