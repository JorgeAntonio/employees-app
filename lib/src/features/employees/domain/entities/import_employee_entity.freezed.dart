// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_employee_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImportEmployeeEntity {

 String get firstName; String get lastName; String get dni; String get email; String get phone; String get position; String get department; String get shiftName;
/// Create a copy of ImportEmployeeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportEmployeeEntityCopyWith<ImportEmployeeEntity> get copyWith => _$ImportEmployeeEntityCopyWithImpl<ImportEmployeeEntity>(this as ImportEmployeeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportEmployeeEntity&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftName, shiftName) || other.shiftName == shiftName));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,dni,email,phone,position,department,shiftName);

@override
String toString() {
  return 'ImportEmployeeEntity(firstName: $firstName, lastName: $lastName, dni: $dni, email: $email, phone: $phone, position: $position, department: $department, shiftName: $shiftName)';
}


}

/// @nodoc
abstract mixin class $ImportEmployeeEntityCopyWith<$Res>  {
  factory $ImportEmployeeEntityCopyWith(ImportEmployeeEntity value, $Res Function(ImportEmployeeEntity) _then) = _$ImportEmployeeEntityCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String dni, String email, String phone, String position, String department, String shiftName
});




}
/// @nodoc
class _$ImportEmployeeEntityCopyWithImpl<$Res>
    implements $ImportEmployeeEntityCopyWith<$Res> {
  _$ImportEmployeeEntityCopyWithImpl(this._self, this._then);

  final ImportEmployeeEntity _self;
  final $Res Function(ImportEmployeeEntity) _then;

/// Create a copy of ImportEmployeeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? dni = null,Object? email = null,Object? phone = null,Object? position = null,Object? department = null,Object? shiftName = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,shiftName: null == shiftName ? _self.shiftName : shiftName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ImportEmployeeEntity].
extension ImportEmployeeEntityPatterns on ImportEmployeeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportEmployeeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportEmployeeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportEmployeeEntity value)  $default,){
final _that = this;
switch (_that) {
case _ImportEmployeeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportEmployeeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ImportEmployeeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String dni,  String email,  String phone,  String position,  String department,  String shiftName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportEmployeeEntity() when $default != null:
return $default(_that.firstName,_that.lastName,_that.dni,_that.email,_that.phone,_that.position,_that.department,_that.shiftName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String dni,  String email,  String phone,  String position,  String department,  String shiftName)  $default,) {final _that = this;
switch (_that) {
case _ImportEmployeeEntity():
return $default(_that.firstName,_that.lastName,_that.dni,_that.email,_that.phone,_that.position,_that.department,_that.shiftName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String dni,  String email,  String phone,  String position,  String department,  String shiftName)?  $default,) {final _that = this;
switch (_that) {
case _ImportEmployeeEntity() when $default != null:
return $default(_that.firstName,_that.lastName,_that.dni,_that.email,_that.phone,_that.position,_that.department,_that.shiftName);case _:
  return null;

}
}

}

/// @nodoc


class _ImportEmployeeEntity implements ImportEmployeeEntity {
  const _ImportEmployeeEntity({required this.firstName, required this.lastName, required this.dni, required this.email, required this.phone, required this.position, required this.department, required this.shiftName});
  

@override final  String firstName;
@override final  String lastName;
@override final  String dni;
@override final  String email;
@override final  String phone;
@override final  String position;
@override final  String department;
@override final  String shiftName;

/// Create a copy of ImportEmployeeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportEmployeeEntityCopyWith<_ImportEmployeeEntity> get copyWith => __$ImportEmployeeEntityCopyWithImpl<_ImportEmployeeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportEmployeeEntity&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftName, shiftName) || other.shiftName == shiftName));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,dni,email,phone,position,department,shiftName);

@override
String toString() {
  return 'ImportEmployeeEntity(firstName: $firstName, lastName: $lastName, dni: $dni, email: $email, phone: $phone, position: $position, department: $department, shiftName: $shiftName)';
}


}

/// @nodoc
abstract mixin class _$ImportEmployeeEntityCopyWith<$Res> implements $ImportEmployeeEntityCopyWith<$Res> {
  factory _$ImportEmployeeEntityCopyWith(_ImportEmployeeEntity value, $Res Function(_ImportEmployeeEntity) _then) = __$ImportEmployeeEntityCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String dni, String email, String phone, String position, String department, String shiftName
});




}
/// @nodoc
class __$ImportEmployeeEntityCopyWithImpl<$Res>
    implements _$ImportEmployeeEntityCopyWith<$Res> {
  __$ImportEmployeeEntityCopyWithImpl(this._self, this._then);

  final _ImportEmployeeEntity _self;
  final $Res Function(_ImportEmployeeEntity) _then;

/// Create a copy of ImportEmployeeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? dni = null,Object? email = null,Object? phone = null,Object? position = null,Object? department = null,Object? shiftName = null,}) {
  return _then(_ImportEmployeeEntity(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,shiftName: null == shiftName ? _self.shiftName : shiftName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
