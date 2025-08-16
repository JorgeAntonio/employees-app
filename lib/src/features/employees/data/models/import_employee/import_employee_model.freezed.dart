// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImportEmployeeModel {

 String get firstName; String get lastName; String get dni; String get email; String get phone; String get position; String get department; String get shiftName;
/// Create a copy of ImportEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportEmployeeModelCopyWith<ImportEmployeeModel> get copyWith => _$ImportEmployeeModelCopyWithImpl<ImportEmployeeModel>(this as ImportEmployeeModel, _$identity);

  /// Serializes this ImportEmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportEmployeeModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftName, shiftName) || other.shiftName == shiftName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,dni,email,phone,position,department,shiftName);

@override
String toString() {
  return 'ImportEmployeeModel(firstName: $firstName, lastName: $lastName, dni: $dni, email: $email, phone: $phone, position: $position, department: $department, shiftName: $shiftName)';
}


}

/// @nodoc
abstract mixin class $ImportEmployeeModelCopyWith<$Res>  {
  factory $ImportEmployeeModelCopyWith(ImportEmployeeModel value, $Res Function(ImportEmployeeModel) _then) = _$ImportEmployeeModelCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String dni, String email, String phone, String position, String department, String shiftName
});




}
/// @nodoc
class _$ImportEmployeeModelCopyWithImpl<$Res>
    implements $ImportEmployeeModelCopyWith<$Res> {
  _$ImportEmployeeModelCopyWithImpl(this._self, this._then);

  final ImportEmployeeModel _self;
  final $Res Function(ImportEmployeeModel) _then;

/// Create a copy of ImportEmployeeModel
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


/// Adds pattern-matching-related methods to [ImportEmployeeModel].
extension ImportEmployeeModelPatterns on ImportEmployeeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportEmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportEmployeeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportEmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _ImportEmployeeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportEmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ImportEmployeeModel() when $default != null:
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
case _ImportEmployeeModel() when $default != null:
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
case _ImportEmployeeModel():
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
case _ImportEmployeeModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.dni,_that.email,_that.phone,_that.position,_that.department,_that.shiftName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImportEmployeeModel implements ImportEmployeeModel {
  const _ImportEmployeeModel({required this.firstName, required this.lastName, required this.dni, required this.email, required this.phone, required this.position, required this.department, required this.shiftName});
  factory _ImportEmployeeModel.fromJson(Map<String, dynamic> json) => _$ImportEmployeeModelFromJson(json);

@override final  String firstName;
@override final  String lastName;
@override final  String dni;
@override final  String email;
@override final  String phone;
@override final  String position;
@override final  String department;
@override final  String shiftName;

/// Create a copy of ImportEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportEmployeeModelCopyWith<_ImportEmployeeModel> get copyWith => __$ImportEmployeeModelCopyWithImpl<_ImportEmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportEmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportEmployeeModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftName, shiftName) || other.shiftName == shiftName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,dni,email,phone,position,department,shiftName);

@override
String toString() {
  return 'ImportEmployeeModel(firstName: $firstName, lastName: $lastName, dni: $dni, email: $email, phone: $phone, position: $position, department: $department, shiftName: $shiftName)';
}


}

/// @nodoc
abstract mixin class _$ImportEmployeeModelCopyWith<$Res> implements $ImportEmployeeModelCopyWith<$Res> {
  factory _$ImportEmployeeModelCopyWith(_ImportEmployeeModel value, $Res Function(_ImportEmployeeModel) _then) = __$ImportEmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String dni, String email, String phone, String position, String department, String shiftName
});




}
/// @nodoc
class __$ImportEmployeeModelCopyWithImpl<$Res>
    implements _$ImportEmployeeModelCopyWith<$Res> {
  __$ImportEmployeeModelCopyWithImpl(this._self, this._then);

  final _ImportEmployeeModel _self;
  final $Res Function(_ImportEmployeeModel) _then;

/// Create a copy of ImportEmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? dni = null,Object? email = null,Object? phone = null,Object? position = null,Object? department = null,Object? shiftName = null,}) {
  return _then(_ImportEmployeeModel(
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
