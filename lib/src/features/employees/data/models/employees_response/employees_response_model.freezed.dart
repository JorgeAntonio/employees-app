// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeesResponseModel {

 bool get success; EmployeesDataModel? get data; String? get message;
/// Create a copy of EmployeesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeesResponseModelCopyWith<EmployeesResponseModel> get copyWith => _$EmployeesResponseModelCopyWithImpl<EmployeesResponseModel>(this as EmployeesResponseModel, _$identity);

  /// Serializes this EmployeesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeesResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'EmployeesResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $EmployeesResponseModelCopyWith<$Res>  {
  factory $EmployeesResponseModelCopyWith(EmployeesResponseModel value, $Res Function(EmployeesResponseModel) _then) = _$EmployeesResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, EmployeesDataModel? data, String? message
});


$EmployeesDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$EmployeesResponseModelCopyWithImpl<$Res>
    implements $EmployeesResponseModelCopyWith<$Res> {
  _$EmployeesResponseModelCopyWithImpl(this._self, this._then);

  final EmployeesResponseModel _self;
  final $Res Function(EmployeesResponseModel) _then;

/// Create a copy of EmployeesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EmployeesDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EmployeesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeesDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EmployeesDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeesResponseModel].
extension EmployeesResponseModelPatterns on EmployeesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  EmployeesDataModel? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeesResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  EmployeesDataModel? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _EmployeesResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  EmployeesDataModel? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _EmployeesResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeesResponseModel implements EmployeesResponseModel {
  const _EmployeesResponseModel({required this.success, this.data, this.message});
  factory _EmployeesResponseModel.fromJson(Map<String, dynamic> json) => _$EmployeesResponseModelFromJson(json);

@override final  bool success;
@override final  EmployeesDataModel? data;
@override final  String? message;

/// Create a copy of EmployeesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeesResponseModelCopyWith<_EmployeesResponseModel> get copyWith => __$EmployeesResponseModelCopyWithImpl<_EmployeesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeesResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'EmployeesResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$EmployeesResponseModelCopyWith<$Res> implements $EmployeesResponseModelCopyWith<$Res> {
  factory _$EmployeesResponseModelCopyWith(_EmployeesResponseModel value, $Res Function(_EmployeesResponseModel) _then) = __$EmployeesResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, EmployeesDataModel? data, String? message
});


@override $EmployeesDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$EmployeesResponseModelCopyWithImpl<$Res>
    implements _$EmployeesResponseModelCopyWith<$Res> {
  __$EmployeesResponseModelCopyWithImpl(this._self, this._then);

  final _EmployeesResponseModel _self;
  final $Res Function(_EmployeesResponseModel) _then;

/// Create a copy of EmployeesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_EmployeesResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as EmployeesDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EmployeesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeesDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $EmployeesDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$EmployeesDataModel {

 List<EmployeeModel> get employees; PaginationResponseModel get pagination;
/// Create a copy of EmployeesDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeesDataModelCopyWith<EmployeesDataModel> get copyWith => _$EmployeesDataModelCopyWithImpl<EmployeesDataModel>(this as EmployeesDataModel, _$identity);

  /// Serializes this EmployeesDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeesDataModel&&const DeepCollectionEquality().equals(other.employees, employees)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(employees),pagination);

@override
String toString() {
  return 'EmployeesDataModel(employees: $employees, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $EmployeesDataModelCopyWith<$Res>  {
  factory $EmployeesDataModelCopyWith(EmployeesDataModel value, $Res Function(EmployeesDataModel) _then) = _$EmployeesDataModelCopyWithImpl;
@useResult
$Res call({
 List<EmployeeModel> employees, PaginationResponseModel pagination
});


$PaginationResponseModelCopyWith<$Res> get pagination;

}
/// @nodoc
class _$EmployeesDataModelCopyWithImpl<$Res>
    implements $EmployeesDataModelCopyWith<$Res> {
  _$EmployeesDataModelCopyWithImpl(this._self, this._then);

  final EmployeesDataModel _self;
  final $Res Function(EmployeesDataModel) _then;

/// Create a copy of EmployeesDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employees = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
employees: null == employees ? _self.employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationResponseModel,
  ));
}
/// Create a copy of EmployeesDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationResponseModelCopyWith<$Res> get pagination {
  
  return $PaginationResponseModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeesDataModel].
extension EmployeesDataModelPatterns on EmployeesDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeesDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeesDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeesDataModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeesDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeesDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeesDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EmployeeModel> employees,  PaginationResponseModel pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeesDataModel() when $default != null:
return $default(_that.employees,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EmployeeModel> employees,  PaginationResponseModel pagination)  $default,) {final _that = this;
switch (_that) {
case _EmployeesDataModel():
return $default(_that.employees,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EmployeeModel> employees,  PaginationResponseModel pagination)?  $default,) {final _that = this;
switch (_that) {
case _EmployeesDataModel() when $default != null:
return $default(_that.employees,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeesDataModel implements EmployeesDataModel {
  const _EmployeesDataModel({required final  List<EmployeeModel> employees, required this.pagination}): _employees = employees;
  factory _EmployeesDataModel.fromJson(Map<String, dynamic> json) => _$EmployeesDataModelFromJson(json);

 final  List<EmployeeModel> _employees;
@override List<EmployeeModel> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}

@override final  PaginationResponseModel pagination;

/// Create a copy of EmployeesDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeesDataModelCopyWith<_EmployeesDataModel> get copyWith => __$EmployeesDataModelCopyWithImpl<_EmployeesDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeesDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeesDataModel&&const DeepCollectionEquality().equals(other._employees, _employees)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees),pagination);

@override
String toString() {
  return 'EmployeesDataModel(employees: $employees, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$EmployeesDataModelCopyWith<$Res> implements $EmployeesDataModelCopyWith<$Res> {
  factory _$EmployeesDataModelCopyWith(_EmployeesDataModel value, $Res Function(_EmployeesDataModel) _then) = __$EmployeesDataModelCopyWithImpl;
@override @useResult
$Res call({
 List<EmployeeModel> employees, PaginationResponseModel pagination
});


@override $PaginationResponseModelCopyWith<$Res> get pagination;

}
/// @nodoc
class __$EmployeesDataModelCopyWithImpl<$Res>
    implements _$EmployeesDataModelCopyWith<$Res> {
  __$EmployeesDataModelCopyWithImpl(this._self, this._then);

  final _EmployeesDataModel _self;
  final $Res Function(_EmployeesDataModel) _then;

/// Create a copy of EmployeesDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employees = null,Object? pagination = null,}) {
  return _then(_EmployeesDataModel(
employees: null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<EmployeeModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationResponseModel,
  ));
}

/// Create a copy of EmployeesDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationResponseModelCopyWith<$Res> get pagination {
  
  return $PaginationResponseModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$EmployeeModel {

 String get id; String get userId; String get firstName; String get lastName; String get dni; String? get phone; String? get photoUrl; String get position; String get department; String? get shiftId; UserModel get user; ShiftModel? get shift;
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<EmployeeModel> get copyWith => _$EmployeeModelCopyWithImpl<EmployeeModel>(this as EmployeeModel, _$identity);

  /// Serializes this EmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.user, user) || other.user == user)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,firstName,lastName,dni,phone,photoUrl,position,department,shiftId,user,shift);

@override
String toString() {
  return 'EmployeeModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId, user: $user, shift: $shift)';
}


}

/// @nodoc
abstract mixin class $EmployeeModelCopyWith<$Res>  {
  factory $EmployeeModelCopyWith(EmployeeModel value, $Res Function(EmployeeModel) _then) = _$EmployeeModelCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId, UserModel user, ShiftModel? shift
});


$UserModelCopyWith<$Res> get user;$ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._self, this._then);

  final EmployeeModel _self;
  final $Res Function(EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,Object? user = null,Object? shift = freezed,}) {
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
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeModel
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


/// Adds pattern-matching-related methods to [EmployeeModel].
extension EmployeeModelPatterns on EmployeeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId,  UserModel user,  ShiftModel? shift)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId,_that.user,_that.shift);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId,  UserModel user,  ShiftModel? shift)  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel():
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId,_that.user,_that.shift);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String firstName,  String lastName,  String dni,  String? phone,  String? photoUrl,  String position,  String department,  String? shiftId,  UserModel user,  ShiftModel? shift)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.userId,_that.firstName,_that.lastName,_that.dni,_that.phone,_that.photoUrl,_that.position,_that.department,_that.shiftId,_that.user,_that.shift);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeModel implements EmployeeModel {
  const _EmployeeModel({required this.id, required this.userId, required this.firstName, required this.lastName, required this.dni, this.phone, this.photoUrl, required this.position, required this.department, this.shiftId, required this.user, this.shift});
  factory _EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);

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
@override final  UserModel user;
@override final  ShiftModel? shift;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeModelCopyWith<_EmployeeModel> get copyWith => __$EmployeeModelCopyWithImpl<_EmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.user, user) || other.user == user)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,firstName,lastName,dni,phone,photoUrl,position,department,shiftId,user,shift);

@override
String toString() {
  return 'EmployeeModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, dni: $dni, phone: $phone, photoUrl: $photoUrl, position: $position, department: $department, shiftId: $shiftId, user: $user, shift: $shift)';
}


}

/// @nodoc
abstract mixin class _$EmployeeModelCopyWith<$Res> implements $EmployeeModelCopyWith<$Res> {
  factory _$EmployeeModelCopyWith(_EmployeeModel value, $Res Function(_EmployeeModel) _then) = __$EmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String firstName, String lastName, String dni, String? phone, String? photoUrl, String position, String department, String? shiftId, UserModel user, ShiftModel? shift
});


@override $UserModelCopyWith<$Res> get user;@override $ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class __$EmployeeModelCopyWithImpl<$Res>
    implements _$EmployeeModelCopyWith<$Res> {
  __$EmployeeModelCopyWithImpl(this._self, this._then);

  final _EmployeeModel _self;
  final $Res Function(_EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? phone = freezed,Object? photoUrl = freezed,Object? position = null,Object? department = null,Object? shiftId = freezed,Object? user = null,Object? shift = freezed,}) {
  return _then(_EmployeeModel(
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
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeModel
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
mixin _$UserModel {

 String get id; String get email; String get role; DateTime get createdAt;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,createdAt);

@override
String toString() {
  return 'UserModel(id: $id, email: $email, role: $role, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String email, String role, DateTime createdAt
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String role,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String role,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.email,_that.role,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String role,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.email,_that.role,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.email, required this.role, required this.createdAt});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String email;
@override final  String role;
@override final  DateTime createdAt;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role,createdAt);

@override
String toString() {
  return 'UserModel(id: $id, email: $email, role: $role, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String role, DateTime createdAt
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,Object? createdAt = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ShiftModel {

 String get id; String get name; String get startTime; String get endTime;
/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<ShiftModel> get copyWith => _$ShiftModelCopyWithImpl<ShiftModel>(this as ShiftModel, _$identity);

  /// Serializes this ShiftModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,startTime,endTime);

@override
String toString() {
  return 'ShiftModel(id: $id, name: $name, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $ShiftModelCopyWith<$Res>  {
  factory $ShiftModelCopyWith(ShiftModel value, $Res Function(ShiftModel) _then) = _$ShiftModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String startTime, String endTime
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String startTime,  String endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.id,_that.name,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String startTime,  String endTime)  $default,) {final _that = this;
switch (_that) {
case _ShiftModel():
return $default(_that.id,_that.name,_that.startTime,_that.endTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String startTime,  String endTime)?  $default,) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.id,_that.name,_that.startTime,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftModel implements ShiftModel {
  const _ShiftModel({required this.id, required this.name, required this.startTime, required this.endTime});
  factory _ShiftModel.fromJson(Map<String, dynamic> json) => _$ShiftModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String startTime;
@override final  String endTime;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftModelCopyWith<_ShiftModel> get copyWith => __$ShiftModelCopyWithImpl<_ShiftModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,startTime,endTime);

@override
String toString() {
  return 'ShiftModel(id: $id, name: $name, startTime: $startTime, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$ShiftModelCopyWith<$Res> implements $ShiftModelCopyWith<$Res> {
  factory _$ShiftModelCopyWith(_ShiftModel value, $Res Function(_ShiftModel) _then) = __$ShiftModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String startTime, String endTime
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? startTime = null,Object? endTime = null,}) {
  return _then(_ShiftModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
