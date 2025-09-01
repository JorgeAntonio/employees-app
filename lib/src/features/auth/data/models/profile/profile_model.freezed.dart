// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileResponseModel {

 bool get success; ProfileDataModel get data; String? get message;
/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseModelCopyWith<ProfileResponseModel> get copyWith => _$ProfileResponseModelCopyWithImpl<ProfileResponseModel>(this as ProfileResponseModel, _$identity);

  /// Serializes this ProfileResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'ProfileResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfileResponseModelCopyWith<$Res>  {
  factory $ProfileResponseModelCopyWith(ProfileResponseModel value, $Res Function(ProfileResponseModel) _then) = _$ProfileResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, ProfileDataModel data, String? message
});


$ProfileDataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$ProfileResponseModelCopyWithImpl<$Res>
    implements $ProfileResponseModelCopyWith<$Res> {
  _$ProfileResponseModelCopyWithImpl(this._self, this._then);

  final ProfileResponseModel _self;
  final $Res Function(ProfileResponseModel) _then;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileDataModel,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataModelCopyWith<$Res> get data {
  
  return $ProfileDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileResponseModel].
extension ProfileResponseModelPatterns on ProfileResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ProfileDataModel data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ProfileDataModel data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ProfileDataModel data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponseModel implements ProfileResponseModel {
  const _ProfileResponseModel({required this.success, required this.data, this.message});
  factory _ProfileResponseModel.fromJson(Map<String, dynamic> json) => _$ProfileResponseModelFromJson(json);

@override final  bool success;
@override final  ProfileDataModel data;
@override final  String? message;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseModelCopyWith<_ProfileResponseModel> get copyWith => __$ProfileResponseModelCopyWithImpl<_ProfileResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'ProfileResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseModelCopyWith<$Res> implements $ProfileResponseModelCopyWith<$Res> {
  factory _$ProfileResponseModelCopyWith(_ProfileResponseModel value, $Res Function(_ProfileResponseModel) _then) = __$ProfileResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, ProfileDataModel data, String? message
});


@override $ProfileDataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$ProfileResponseModelCopyWithImpl<$Res>
    implements _$ProfileResponseModelCopyWith<$Res> {
  __$ProfileResponseModelCopyWithImpl(this._self, this._then);

  final _ProfileResponseModel _self;
  final $Res Function(_ProfileResponseModel) _then;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? message = freezed,}) {
  return _then(_ProfileResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileDataModel,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataModelCopyWith<$Res> get data {
  
  return $ProfileDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ProfileDataModel {

 String get id; String get email; String get role; EmployeeWithShiftModel? get employee;
/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDataModelCopyWith<ProfileDataModel> get copyWith => _$ProfileDataModelCopyWithImpl<ProfileDataModel>(this as ProfileDataModel, _$identity);

  /// Serializes this ProfileDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,employee);

@override
String toString() {
  return 'ProfileDataModel(id: $id, email: $email, role: $role, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $ProfileDataModelCopyWith<$Res>  {
  factory $ProfileDataModelCopyWith(ProfileDataModel value, $Res Function(ProfileDataModel) _then) = _$ProfileDataModelCopyWithImpl;
@useResult
$Res call({
 String id, String email, String role, EmployeeWithShiftModel? employee
});


$EmployeeWithShiftModelCopyWith<$Res>? get employee;

}
/// @nodoc
class _$ProfileDataModelCopyWithImpl<$Res>
    implements $ProfileDataModelCopyWith<$Res> {
  _$ProfileDataModelCopyWithImpl(this._self, this._then);

  final ProfileDataModel _self;
  final $Res Function(ProfileDataModel) _then;

/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,Object? employee = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeWithShiftModel?,
  ));
}
/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeWithShiftModelCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeWithShiftModelCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileDataModel].
extension ProfileDataModelPatterns on ProfileDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDataModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String role,  EmployeeWithShiftModel? employee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String role,  EmployeeWithShiftModel? employee)  $default,) {final _that = this;
switch (_that) {
case _ProfileDataModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String role,  EmployeeWithShiftModel? employee)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDataModel() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.employee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDataModel implements ProfileDataModel {
  const _ProfileDataModel({required this.id, required this.email, required this.role, this.employee});
  factory _ProfileDataModel.fromJson(Map<String, dynamic> json) => _$ProfileDataModelFromJson(json);

@override final  String id;
@override final  String email;
@override final  String role;
@override final  EmployeeWithShiftModel? employee;

/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDataModelCopyWith<_ProfileDataModel> get copyWith => __$ProfileDataModelCopyWithImpl<_ProfileDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,employee);

@override
String toString() {
  return 'ProfileDataModel(id: $id, email: $email, role: $role, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$ProfileDataModelCopyWith<$Res> implements $ProfileDataModelCopyWith<$Res> {
  factory _$ProfileDataModelCopyWith(_ProfileDataModel value, $Res Function(_ProfileDataModel) _then) = __$ProfileDataModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String role, EmployeeWithShiftModel? employee
});


@override $EmployeeWithShiftModelCopyWith<$Res>? get employee;

}
/// @nodoc
class __$ProfileDataModelCopyWithImpl<$Res>
    implements _$ProfileDataModelCopyWith<$Res> {
  __$ProfileDataModelCopyWithImpl(this._self, this._then);

  final _ProfileDataModel _self;
  final $Res Function(_ProfileDataModel) _then;

/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,Object? employee = freezed,}) {
  return _then(_ProfileDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeWithShiftModel?,
  ));
}

/// Create a copy of ProfileDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeWithShiftModelCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeWithShiftModelCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// @nodoc
mixin _$EmployeeWithShiftModel {

 String get id; String get userId; String get firstName; String get lastName; String get dni; String? get phone; String? get photoUrl; String get position; String get department; String? get shiftId; ShiftModel? get shift;
/// Create a copy of EmployeeWithShiftModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeWithShiftModelCopyWith<EmployeeWithShiftModel> get copyWith => _$EmployeeWithShiftModelCopyWithImpl<EmployeeWithShiftModel>(this as EmployeeWithShiftModel, _$identity);

  /// Serializes this EmployeeWithShiftModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeWithShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,firstName,lastName,dni,phone,photoUrl,position,department,shiftId,shift);

@override
String toString() {
  return 'EmployeeWithShiftModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId, shift: $shift)';
}


}

/// @nodoc
abstract mixin class $EmployeeWithShiftModelCopyWith<$Res>  {
  factory $EmployeeWithShiftModelCopyWith(EmployeeWithShiftModel value, $Res Function(EmployeeWithShiftModel) _then) = _$EmployeeWithShiftModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId, ShiftModel? shift
});


$ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class _$EmployeeWithShiftModelCopyWithImpl<$Res>
    implements $EmployeeWithShiftModelCopyWith<$Res> {
  _$EmployeeWithShiftModelCopyWithImpl(this._self, this._then);

  final EmployeeWithShiftModel _self;
  final $Res Function(EmployeeWithShiftModel) _then;

/// Create a copy of EmployeeWithShiftModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,Object? shift = freezed,}) {
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
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}
/// Create a copy of EmployeeWithShiftModel
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


/// Adds pattern-matching-related methods to [EmployeeWithShiftModel].
extension EmployeeWithShiftModelPatterns on EmployeeWithShiftModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeWithShiftModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeWithShiftModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeWithShiftModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeWithShiftModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeWithShiftModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeWithShiftModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId,  ShiftModel? shift)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeWithShiftModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId,_that.shift);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId,  ShiftModel? shift)  $default,) {final _that = this;
switch (_that) {
case _EmployeeWithShiftModel():
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId,_that.shift);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId,  ShiftModel? shift)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeWithShiftModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId,_that.shift);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeWithShiftModel implements EmployeeWithShiftModel {
  const _EmployeeWithShiftModel({required this.id, required this.userId, required this.firstName, required this.lastName, required this.dni, this.phone, this.photoUrl, required this.position, required this.department, this.shiftId, this.shift});
  factory _EmployeeWithShiftModel.fromJson(Map<String, dynamic> json) => _$EmployeeWithShiftModelFromJson(json);

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
@override final  ShiftModel? shift;

/// Create a copy of EmployeeWithShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeWithShiftModelCopyWith<_EmployeeWithShiftModel> get copyWith => __$EmployeeWithShiftModelCopyWithImpl<_EmployeeWithShiftModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeWithShiftModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeWithShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,firstName,lastName,dni,phone,photoUrl,position,department,shiftId,shift);

@override
String toString() {
  return 'EmployeeWithShiftModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId, shift: $shift)';
}


}

/// @nodoc
abstract mixin class _$EmployeeWithShiftModelCopyWith<$Res> implements $EmployeeWithShiftModelCopyWith<$Res> {
  factory _$EmployeeWithShiftModelCopyWith(_EmployeeWithShiftModel value, $Res Function(_EmployeeWithShiftModel) _then) = __$EmployeeWithShiftModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId, ShiftModel? shift
});


@override $ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class __$EmployeeWithShiftModelCopyWithImpl<$Res>
    implements _$EmployeeWithShiftModelCopyWith<$Res> {
  __$EmployeeWithShiftModelCopyWithImpl(this._self, this._then);

  final _EmployeeWithShiftModel _self;
  final $Res Function(_EmployeeWithShiftModel) _then;

/// Create a copy of EmployeeWithShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,Object? shift = freezed,}) {
  return _then(_EmployeeWithShiftModel(
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
as String?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}

/// Create a copy of EmployeeWithShiftModel
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

// dart format on
