// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthSessionUserModel {

 String get id; String get email; String get role; AuthSessionEmployeeModel get employee;
/// Create a copy of AuthSessionUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSessionUserModelCopyWith<AuthSessionUserModel> get copyWith => _$AuthSessionUserModelCopyWithImpl<AuthSessionUserModel>(this as AuthSessionUserModel, _$identity);

  /// Serializes this AuthSessionUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSessionUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,employee);

@override
String toString() {
  return 'AuthSessionUserModel(id: $id, email: $email, role: $role, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $AuthSessionUserModelCopyWith<$Res>  {
  factory $AuthSessionUserModelCopyWith(AuthSessionUserModel value, $Res Function(AuthSessionUserModel) _then) = _$AuthSessionUserModelCopyWithImpl;
@useResult
$Res call({
 String id, String email, String role, AuthSessionEmployeeModel employee
});


$AuthSessionEmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class _$AuthSessionUserModelCopyWithImpl<$Res>
    implements $AuthSessionUserModelCopyWith<$Res> {
  _$AuthSessionUserModelCopyWithImpl(this._self, this._then);

  final AuthSessionUserModel _self;
  final $Res Function(AuthSessionUserModel) _then;

/// Create a copy of AuthSessionUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,Object? employee = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as AuthSessionEmployeeModel,
  ));
}
/// Create a copy of AuthSessionUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionEmployeeModelCopyWith<$Res> get employee {
  
  return $AuthSessionEmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthSessionUserModel].
extension AuthSessionUserModelPatterns on AuthSessionUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSessionUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSessionUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSessionUserModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthSessionUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSessionUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSessionUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String role,  AuthSessionEmployeeModel employee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSessionUserModel() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.employee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String role,  AuthSessionEmployeeModel employee)  $default,) {final _that = this;
switch (_that) {
case _AuthSessionUserModel():
return $default(_that.id,_that.email,_that.role,_that.employee);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String role,  AuthSessionEmployeeModel employee)?  $default,) {final _that = this;
switch (_that) {
case _AuthSessionUserModel() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.employee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthSessionUserModel implements AuthSessionUserModel {
  const _AuthSessionUserModel({required this.id, required this.email, required this.role, required this.employee});
  factory _AuthSessionUserModel.fromJson(Map<String, dynamic> json) => _$AuthSessionUserModelFromJson(json);

@override final  String id;
@override final  String email;
@override final  String role;
@override final  AuthSessionEmployeeModel employee;

/// Create a copy of AuthSessionUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSessionUserModelCopyWith<_AuthSessionUserModel> get copyWith => __$AuthSessionUserModelCopyWithImpl<_AuthSessionUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthSessionUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSessionUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,employee);

@override
String toString() {
  return 'AuthSessionUserModel(id: $id, email: $email, role: $role, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$AuthSessionUserModelCopyWith<$Res> implements $AuthSessionUserModelCopyWith<$Res> {
  factory _$AuthSessionUserModelCopyWith(_AuthSessionUserModel value, $Res Function(_AuthSessionUserModel) _then) = __$AuthSessionUserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String role, AuthSessionEmployeeModel employee
});


@override $AuthSessionEmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class __$AuthSessionUserModelCopyWithImpl<$Res>
    implements _$AuthSessionUserModelCopyWith<$Res> {
  __$AuthSessionUserModelCopyWithImpl(this._self, this._then);

  final _AuthSessionUserModel _self;
  final $Res Function(_AuthSessionUserModel) _then;

/// Create a copy of AuthSessionUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,Object? employee = null,}) {
  return _then(_AuthSessionUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as AuthSessionEmployeeModel,
  ));
}

/// Create a copy of AuthSessionUserModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionEmployeeModelCopyWith<$Res> get employee {
  
  return $AuthSessionEmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on
