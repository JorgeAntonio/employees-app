// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_employee_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateEmployeeResponseModel {

 bool get success; CreateEmployeeDataModel? get data; String? get message;
/// Create a copy of CreateEmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateEmployeeResponseModelCopyWith<CreateEmployeeResponseModel> get copyWith => _$CreateEmployeeResponseModelCopyWithImpl<CreateEmployeeResponseModel>(this as CreateEmployeeResponseModel, _$identity);

  /// Serializes this CreateEmployeeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEmployeeResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'CreateEmployeeResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateEmployeeResponseModelCopyWith<$Res>  {
  factory $CreateEmployeeResponseModelCopyWith(CreateEmployeeResponseModel value, $Res Function(CreateEmployeeResponseModel) _then) = _$CreateEmployeeResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, CreateEmployeeDataModel? data, String? message
});


$CreateEmployeeDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$CreateEmployeeResponseModelCopyWithImpl<$Res>
    implements $CreateEmployeeResponseModelCopyWith<$Res> {
  _$CreateEmployeeResponseModelCopyWithImpl(this._self, this._then);

  final CreateEmployeeResponseModel _self;
  final $Res Function(CreateEmployeeResponseModel) _then;

/// Create a copy of CreateEmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateEmployeeDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateEmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateEmployeeDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateEmployeeDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateEmployeeResponseModel].
extension CreateEmployeeResponseModelPatterns on CreateEmployeeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateEmployeeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateEmployeeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateEmployeeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateEmployeeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateEmployeeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateEmployeeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  CreateEmployeeDataModel? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateEmployeeResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  CreateEmployeeDataModel? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _CreateEmployeeResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  CreateEmployeeDataModel? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _CreateEmployeeResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateEmployeeResponseModel implements CreateEmployeeResponseModel {
  const _CreateEmployeeResponseModel({required this.success, this.data, this.message});
  factory _CreateEmployeeResponseModel.fromJson(Map<String, dynamic> json) => _$CreateEmployeeResponseModelFromJson(json);

@override final  bool success;
@override final  CreateEmployeeDataModel? data;
@override final  String? message;

/// Create a copy of CreateEmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateEmployeeResponseModelCopyWith<_CreateEmployeeResponseModel> get copyWith => __$CreateEmployeeResponseModelCopyWithImpl<_CreateEmployeeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateEmployeeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateEmployeeResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'CreateEmployeeResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateEmployeeResponseModelCopyWith<$Res> implements $CreateEmployeeResponseModelCopyWith<$Res> {
  factory _$CreateEmployeeResponseModelCopyWith(_CreateEmployeeResponseModel value, $Res Function(_CreateEmployeeResponseModel) _then) = __$CreateEmployeeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, CreateEmployeeDataModel? data, String? message
});


@override $CreateEmployeeDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$CreateEmployeeResponseModelCopyWithImpl<$Res>
    implements _$CreateEmployeeResponseModelCopyWith<$Res> {
  __$CreateEmployeeResponseModelCopyWithImpl(this._self, this._then);

  final _CreateEmployeeResponseModel _self;
  final $Res Function(_CreateEmployeeResponseModel) _then;

/// Create a copy of CreateEmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_CreateEmployeeResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateEmployeeDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateEmployeeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateEmployeeDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CreateEmployeeDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CreateEmployeeDataModel {

 CreatedUserModel get user; EmployeeModel get employee;
/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateEmployeeDataModelCopyWith<CreateEmployeeDataModel> get copyWith => _$CreateEmployeeDataModelCopyWithImpl<CreateEmployeeDataModel>(this as CreateEmployeeDataModel, _$identity);

  /// Serializes this CreateEmployeeDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEmployeeDataModel&&(identical(other.user, user) || other.user == user)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,employee);

@override
String toString() {
  return 'CreateEmployeeDataModel(user: $user, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $CreateEmployeeDataModelCopyWith<$Res>  {
  factory $CreateEmployeeDataModelCopyWith(CreateEmployeeDataModel value, $Res Function(CreateEmployeeDataModel) _then) = _$CreateEmployeeDataModelCopyWithImpl;
@useResult
$Res call({
 CreatedUserModel user, EmployeeModel employee
});


$CreatedUserModelCopyWith<$Res> get user;$EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class _$CreateEmployeeDataModelCopyWithImpl<$Res>
    implements $CreateEmployeeDataModelCopyWith<$Res> {
  _$CreateEmployeeDataModelCopyWithImpl(this._self, this._then);

  final CreateEmployeeDataModel _self;
  final $Res Function(CreateEmployeeDataModel) _then;

/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? employee = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CreatedUserModel,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,
  ));
}
/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedUserModelCopyWith<$Res> get user {
  
  return $CreatedUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<$Res> get employee {
  
  return $EmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateEmployeeDataModel].
extension CreateEmployeeDataModelPatterns on CreateEmployeeDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateEmployeeDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateEmployeeDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateEmployeeDataModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateEmployeeDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateEmployeeDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateEmployeeDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreatedUserModel user,  EmployeeModel employee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateEmployeeDataModel() when $default != null:
return $default(_that.user,_that.employee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreatedUserModel user,  EmployeeModel employee)  $default,) {final _that = this;
switch (_that) {
case _CreateEmployeeDataModel():
return $default(_that.user,_that.employee);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreatedUserModel user,  EmployeeModel employee)?  $default,) {final _that = this;
switch (_that) {
case _CreateEmployeeDataModel() when $default != null:
return $default(_that.user,_that.employee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateEmployeeDataModel implements CreateEmployeeDataModel {
  const _CreateEmployeeDataModel({required this.user, required this.employee});
  factory _CreateEmployeeDataModel.fromJson(Map<String, dynamic> json) => _$CreateEmployeeDataModelFromJson(json);

@override final  CreatedUserModel user;
@override final  EmployeeModel employee;

/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateEmployeeDataModelCopyWith<_CreateEmployeeDataModel> get copyWith => __$CreateEmployeeDataModelCopyWithImpl<_CreateEmployeeDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateEmployeeDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateEmployeeDataModel&&(identical(other.user, user) || other.user == user)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,employee);

@override
String toString() {
  return 'CreateEmployeeDataModel(user: $user, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$CreateEmployeeDataModelCopyWith<$Res> implements $CreateEmployeeDataModelCopyWith<$Res> {
  factory _$CreateEmployeeDataModelCopyWith(_CreateEmployeeDataModel value, $Res Function(_CreateEmployeeDataModel) _then) = __$CreateEmployeeDataModelCopyWithImpl;
@override @useResult
$Res call({
 CreatedUserModel user, EmployeeModel employee
});


@override $CreatedUserModelCopyWith<$Res> get user;@override $EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class __$CreateEmployeeDataModelCopyWithImpl<$Res>
    implements _$CreateEmployeeDataModelCopyWith<$Res> {
  __$CreateEmployeeDataModelCopyWithImpl(this._self, this._then);

  final _CreateEmployeeDataModel _self;
  final $Res Function(_CreateEmployeeDataModel) _then;

/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? employee = null,}) {
  return _then(_CreateEmployeeDataModel(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CreatedUserModel,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,
  ));
}

/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedUserModelCopyWith<$Res> get user {
  
  return $CreatedUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of CreateEmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<$Res> get employee {
  
  return $EmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// @nodoc
mixin _$CreatedUserModel {

 String get id; String get email; String get role;
/// Create a copy of CreatedUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedUserModelCopyWith<CreatedUserModel> get copyWith => _$CreatedUserModelCopyWithImpl<CreatedUserModel>(this as CreatedUserModel, _$identity);

  /// Serializes this CreatedUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role);

@override
String toString() {
  return 'CreatedUserModel(id: $id, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class $CreatedUserModelCopyWith<$Res>  {
  factory $CreatedUserModelCopyWith(CreatedUserModel value, $Res Function(CreatedUserModel) _then) = _$CreatedUserModelCopyWithImpl;
@useResult
$Res call({
 String id, String email, String role
});




}
/// @nodoc
class _$CreatedUserModelCopyWithImpl<$Res>
    implements $CreatedUserModelCopyWith<$Res> {
  _$CreatedUserModelCopyWithImpl(this._self, this._then);

  final CreatedUserModel _self;
  final $Res Function(CreatedUserModel) _then;

/// Create a copy of CreatedUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedUserModel].
extension CreatedUserModelPatterns on CreatedUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedUserModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatedUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedUserModel() when $default != null:
return $default(_that.id,_that.email,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String role)  $default,) {final _that = this;
switch (_that) {
case _CreatedUserModel():
return $default(_that.id,_that.email,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String role)?  $default,) {final _that = this;
switch (_that) {
case _CreatedUserModel() when $default != null:
return $default(_that.id,_that.email,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedUserModel implements CreatedUserModel {
  const _CreatedUserModel({required this.id, required this.email, required this.role});
  factory _CreatedUserModel.fromJson(Map<String, dynamic> json) => _$CreatedUserModelFromJson(json);

@override final  String id;
@override final  String email;
@override final  String role;

/// Create a copy of CreatedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedUserModelCopyWith<_CreatedUserModel> get copyWith => __$CreatedUserModelCopyWithImpl<_CreatedUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role);

@override
String toString() {
  return 'CreatedUserModel(id: $id, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class _$CreatedUserModelCopyWith<$Res> implements $CreatedUserModelCopyWith<$Res> {
  factory _$CreatedUserModelCopyWith(_CreatedUserModel value, $Res Function(_CreatedUserModel) _then) = __$CreatedUserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String role
});




}
/// @nodoc
class __$CreatedUserModelCopyWithImpl<$Res>
    implements _$CreatedUserModelCopyWith<$Res> {
  __$CreatedUserModelCopyWithImpl(this._self, this._then);

  final _CreatedUserModel _self;
  final $Res Function(_CreatedUserModel) _then;

/// Create a copy of CreatedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,}) {
  return _then(_CreatedUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
