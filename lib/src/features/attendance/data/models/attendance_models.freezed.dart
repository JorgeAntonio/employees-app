// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QRCodeModel {

 String get qrCode; String get manualCode; DateTime get expiresAt; String get type;
/// Create a copy of QRCodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QRCodeModelCopyWith<QRCodeModel> get copyWith => _$QRCodeModelCopyWithImpl<QRCodeModel>(this as QRCodeModel, _$identity);

  /// Serializes this QRCodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QRCodeModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.manualCode, manualCode) || other.manualCode == manualCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode,manualCode,expiresAt,type);

@override
String toString() {
  return 'QRCodeModel(qrCode: $qrCode, manualCode: $manualCode, expiresAt: $expiresAt, type: $type)';
}


}

/// @nodoc
abstract mixin class $QRCodeModelCopyWith<$Res>  {
  factory $QRCodeModelCopyWith(QRCodeModel value, $Res Function(QRCodeModel) _then) = _$QRCodeModelCopyWithImpl;
@useResult
$Res call({
 String qrCode, String manualCode, DateTime expiresAt, String type
});




}
/// @nodoc
class _$QRCodeModelCopyWithImpl<$Res>
    implements $QRCodeModelCopyWith<$Res> {
  _$QRCodeModelCopyWithImpl(this._self, this._then);

  final QRCodeModel _self;
  final $Res Function(QRCodeModel) _then;

/// Create a copy of QRCodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qrCode = null,Object? manualCode = null,Object? expiresAt = null,Object? type = null,}) {
  return _then(_self.copyWith(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,manualCode: null == manualCode ? _self.manualCode : manualCode // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QRCodeModel].
extension QRCodeModelPatterns on QRCodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QRCodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QRCodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QRCodeModel value)  $default,){
final _that = this;
switch (_that) {
case _QRCodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QRCodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _QRCodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String qrCode,  String manualCode,  DateTime expiresAt,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QRCodeModel() when $default != null:
return $default(_that.qrCode,_that.manualCode,_that.expiresAt,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String qrCode,  String manualCode,  DateTime expiresAt,  String type)  $default,) {final _that = this;
switch (_that) {
case _QRCodeModel():
return $default(_that.qrCode,_that.manualCode,_that.expiresAt,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String qrCode,  String manualCode,  DateTime expiresAt,  String type)?  $default,) {final _that = this;
switch (_that) {
case _QRCodeModel() when $default != null:
return $default(_that.qrCode,_that.manualCode,_that.expiresAt,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QRCodeModel implements QRCodeModel {
  const _QRCodeModel({required this.qrCode, required this.manualCode, required this.expiresAt, required this.type});
  factory _QRCodeModel.fromJson(Map<String, dynamic> json) => _$QRCodeModelFromJson(json);

@override final  String qrCode;
@override final  String manualCode;
@override final  DateTime expiresAt;
@override final  String type;

/// Create a copy of QRCodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QRCodeModelCopyWith<_QRCodeModel> get copyWith => __$QRCodeModelCopyWithImpl<_QRCodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QRCodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QRCodeModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.manualCode, manualCode) || other.manualCode == manualCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode,manualCode,expiresAt,type);

@override
String toString() {
  return 'QRCodeModel(qrCode: $qrCode, manualCode: $manualCode, expiresAt: $expiresAt, type: $type)';
}


}

/// @nodoc
abstract mixin class _$QRCodeModelCopyWith<$Res> implements $QRCodeModelCopyWith<$Res> {
  factory _$QRCodeModelCopyWith(_QRCodeModel value, $Res Function(_QRCodeModel) _then) = __$QRCodeModelCopyWithImpl;
@override @useResult
$Res call({
 String qrCode, String manualCode, DateTime expiresAt, String type
});




}
/// @nodoc
class __$QRCodeModelCopyWithImpl<$Res>
    implements _$QRCodeModelCopyWith<$Res> {
  __$QRCodeModelCopyWithImpl(this._self, this._then);

  final _QRCodeModel _self;
  final $Res Function(_QRCodeModel) _then;

/// Create a copy of QRCodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qrCode = null,Object? manualCode = null,Object? expiresAt = null,Object? type = null,}) {
  return _then(_QRCodeModel(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,manualCode: null == manualCode ? _self.manualCode : manualCode // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EmployeeModel {

 String get id; String get firstName; String get lastName; String get email; String get position;
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<EmployeeModel> get copyWith => _$EmployeeModelCopyWithImpl<EmployeeModel>(this as EmployeeModel, _$identity);

  /// Serializes this EmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,position);

@override
String toString() {
  return 'EmployeeModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, position: $position)';
}


}

/// @nodoc
abstract mixin class $EmployeeModelCopyWith<$Res>  {
  factory $EmployeeModelCopyWith(EmployeeModel value, $Res Function(EmployeeModel) _then) = _$EmployeeModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String email, String position
});




}
/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._self, this._then);

  final EmployeeModel _self;
  final $Res Function(EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? position = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.position);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String position)  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.position);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String email,  String position)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.position);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeModel implements EmployeeModel {
  const _EmployeeModel({required this.id, required this.firstName, required this.lastName, required this.email, required this.position});
  factory _EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String position;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.position, position) || other.position == position));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,position);

@override
String toString() {
  return 'EmployeeModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, position: $position)';
}


}

/// @nodoc
abstract mixin class _$EmployeeModelCopyWith<$Res> implements $EmployeeModelCopyWith<$Res> {
  factory _$EmployeeModelCopyWith(_EmployeeModel value, $Res Function(_EmployeeModel) _then) = __$EmployeeModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String email, String position
});




}
/// @nodoc
class __$EmployeeModelCopyWithImpl<$Res>
    implements _$EmployeeModelCopyWith<$Res> {
  __$EmployeeModelCopyWithImpl(this._self, this._then);

  final _EmployeeModel _self;
  final $Res Function(_EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? position = null,}) {
  return _then(_EmployeeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttendanceValidationModel {

 EmployeeModel get employee; String get type; DateTime get timestamp; String get location;
/// Create a copy of AttendanceValidationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceValidationModelCopyWith<AttendanceValidationModel> get copyWith => _$AttendanceValidationModelCopyWithImpl<AttendanceValidationModel>(this as AttendanceValidationModel, _$identity);

  /// Serializes this AttendanceValidationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceValidationModel&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employee,type,timestamp,location);

@override
String toString() {
  return 'AttendanceValidationModel(employee: $employee, type: $type, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class $AttendanceValidationModelCopyWith<$Res>  {
  factory $AttendanceValidationModelCopyWith(AttendanceValidationModel value, $Res Function(AttendanceValidationModel) _then) = _$AttendanceValidationModelCopyWithImpl;
@useResult
$Res call({
 EmployeeModel employee, String type, DateTime timestamp, String location
});


$EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class _$AttendanceValidationModelCopyWithImpl<$Res>
    implements $AttendanceValidationModelCopyWith<$Res> {
  _$AttendanceValidationModelCopyWithImpl(this._self, this._then);

  final AttendanceValidationModel _self;
  final $Res Function(AttendanceValidationModel) _then;

/// Create a copy of AttendanceValidationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employee = null,Object? type = null,Object? timestamp = null,Object? location = null,}) {
  return _then(_self.copyWith(
employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AttendanceValidationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<$Res> get employee {
  
  return $EmployeeModelCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceValidationModel].
extension AttendanceValidationModelPatterns on AttendanceValidationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceValidationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceValidationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceValidationModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceValidationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceValidationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceValidationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmployeeModel employee,  String type,  DateTime timestamp,  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceValidationModel() when $default != null:
return $default(_that.employee,_that.type,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmployeeModel employee,  String type,  DateTime timestamp,  String location)  $default,) {final _that = this;
switch (_that) {
case _AttendanceValidationModel():
return $default(_that.employee,_that.type,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmployeeModel employee,  String type,  DateTime timestamp,  String location)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceValidationModel() when $default != null:
return $default(_that.employee,_that.type,_that.timestamp,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceValidationModel implements AttendanceValidationModel {
  const _AttendanceValidationModel({required this.employee, required this.type, required this.timestamp, required this.location});
  factory _AttendanceValidationModel.fromJson(Map<String, dynamic> json) => _$AttendanceValidationModelFromJson(json);

@override final  EmployeeModel employee;
@override final  String type;
@override final  DateTime timestamp;
@override final  String location;

/// Create a copy of AttendanceValidationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceValidationModelCopyWith<_AttendanceValidationModel> get copyWith => __$AttendanceValidationModelCopyWithImpl<_AttendanceValidationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceValidationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceValidationModel&&(identical(other.employee, employee) || other.employee == employee)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,employee,type,timestamp,location);

@override
String toString() {
  return 'AttendanceValidationModel(employee: $employee, type: $type, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class _$AttendanceValidationModelCopyWith<$Res> implements $AttendanceValidationModelCopyWith<$Res> {
  factory _$AttendanceValidationModelCopyWith(_AttendanceValidationModel value, $Res Function(_AttendanceValidationModel) _then) = __$AttendanceValidationModelCopyWithImpl;
@override @useResult
$Res call({
 EmployeeModel employee, String type, DateTime timestamp, String location
});


@override $EmployeeModelCopyWith<$Res> get employee;

}
/// @nodoc
class __$AttendanceValidationModelCopyWithImpl<$Res>
    implements _$AttendanceValidationModelCopyWith<$Res> {
  __$AttendanceValidationModelCopyWithImpl(this._self, this._then);

  final _AttendanceValidationModel _self;
  final $Res Function(_AttendanceValidationModel) _then;

/// Create a copy of AttendanceValidationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employee = null,Object? type = null,Object? timestamp = null,Object? location = null,}) {
  return _then(_AttendanceValidationModel(
employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeModel,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AttendanceValidationModel
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
mixin _$AttendanceRecordModel {

 String get id; String get employeeId; String get type; DateTime get timestamp; String get location;
/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordModelCopyWith<AttendanceRecordModel> get copyWith => _$AttendanceRecordModelCopyWithImpl<AttendanceRecordModel>(this as AttendanceRecordModel, _$identity);

  /// Serializes this AttendanceRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,type,timestamp,location);

@override
String toString() {
  return 'AttendanceRecordModel(id: $id, employeeId: $employeeId, type: $type, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordModelCopyWith<$Res>  {
  factory $AttendanceRecordModelCopyWith(AttendanceRecordModel value, $Res Function(AttendanceRecordModel) _then) = _$AttendanceRecordModelCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String type, DateTime timestamp, String location
});




}
/// @nodoc
class _$AttendanceRecordModelCopyWithImpl<$Res>
    implements $AttendanceRecordModelCopyWith<$Res> {
  _$AttendanceRecordModelCopyWithImpl(this._self, this._then);

  final AttendanceRecordModel _self;
  final $Res Function(AttendanceRecordModel) _then;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? type = null,Object? timestamp = null,Object? location = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceRecordModel].
extension AttendanceRecordModelPatterns on AttendanceRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String type,  DateTime timestamp,  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.type,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String type,  DateTime timestamp,  String location)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecordModel():
return $default(_that.id,_that.employeeId,_that.type,_that.timestamp,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String type,  DateTime timestamp,  String location)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.type,_that.timestamp,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceRecordModel implements AttendanceRecordModel {
  const _AttendanceRecordModel({required this.id, required this.employeeId, required this.type, required this.timestamp, required this.location});
  factory _AttendanceRecordModel.fromJson(Map<String, dynamic> json) => _$AttendanceRecordModelFromJson(json);

@override final  String id;
@override final  String employeeId;
@override final  String type;
@override final  DateTime timestamp;
@override final  String location;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordModelCopyWith<_AttendanceRecordModel> get copyWith => __$AttendanceRecordModelCopyWithImpl<_AttendanceRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,type,timestamp,location);

@override
String toString() {
  return 'AttendanceRecordModel(id: $id, employeeId: $employeeId, type: $type, timestamp: $timestamp, location: $location)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordModelCopyWith<$Res> implements $AttendanceRecordModelCopyWith<$Res> {
  factory _$AttendanceRecordModelCopyWith(_AttendanceRecordModel value, $Res Function(_AttendanceRecordModel) _then) = __$AttendanceRecordModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String type, DateTime timestamp, String location
});




}
/// @nodoc
class __$AttendanceRecordModelCopyWithImpl<$Res>
    implements _$AttendanceRecordModelCopyWith<$Res> {
  __$AttendanceRecordModelCopyWithImpl(this._self, this._then);

  final _AttendanceRecordModel _self;
  final $Res Function(_AttendanceRecordModel) _then;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? type = null,Object? timestamp = null,Object? location = null,}) {
  return _then(_AttendanceRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttendanceStatusModel {

 bool get isCheckedIn; DateTime? get lastCheckIn; DateTime? get lastCheckOut; int get todayDuration; String get currentStatus;
/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStatusModelCopyWith<AttendanceStatusModel> get copyWith => _$AttendanceStatusModelCopyWithImpl<AttendanceStatusModel>(this as AttendanceStatusModel, _$identity);

  /// Serializes this AttendanceStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceStatusModel&&(identical(other.isCheckedIn, isCheckedIn) || other.isCheckedIn == isCheckedIn)&&(identical(other.lastCheckIn, lastCheckIn) || other.lastCheckIn == lastCheckIn)&&(identical(other.lastCheckOut, lastCheckOut) || other.lastCheckOut == lastCheckOut)&&(identical(other.todayDuration, todayDuration) || other.todayDuration == todayDuration)&&(identical(other.currentStatus, currentStatus) || other.currentStatus == currentStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCheckedIn,lastCheckIn,lastCheckOut,todayDuration,currentStatus);

@override
String toString() {
  return 'AttendanceStatusModel(isCheckedIn: $isCheckedIn, lastCheckIn: $lastCheckIn, lastCheckOut: $lastCheckOut, todayDuration: $todayDuration, currentStatus: $currentStatus)';
}


}

/// @nodoc
abstract mixin class $AttendanceStatusModelCopyWith<$Res>  {
  factory $AttendanceStatusModelCopyWith(AttendanceStatusModel value, $Res Function(AttendanceStatusModel) _then) = _$AttendanceStatusModelCopyWithImpl;
@useResult
$Res call({
 bool isCheckedIn, DateTime? lastCheckIn, DateTime? lastCheckOut, int todayDuration, String currentStatus
});




}
/// @nodoc
class _$AttendanceStatusModelCopyWithImpl<$Res>
    implements $AttendanceStatusModelCopyWith<$Res> {
  _$AttendanceStatusModelCopyWithImpl(this._self, this._then);

  final AttendanceStatusModel _self;
  final $Res Function(AttendanceStatusModel) _then;

/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCheckedIn = null,Object? lastCheckIn = freezed,Object? lastCheckOut = freezed,Object? todayDuration = null,Object? currentStatus = null,}) {
  return _then(_self.copyWith(
isCheckedIn: null == isCheckedIn ? _self.isCheckedIn : isCheckedIn // ignore: cast_nullable_to_non_nullable
as bool,lastCheckIn: freezed == lastCheckIn ? _self.lastCheckIn : lastCheckIn // ignore: cast_nullable_to_non_nullable
as DateTime?,lastCheckOut: freezed == lastCheckOut ? _self.lastCheckOut : lastCheckOut // ignore: cast_nullable_to_non_nullable
as DateTime?,todayDuration: null == todayDuration ? _self.todayDuration : todayDuration // ignore: cast_nullable_to_non_nullable
as int,currentStatus: null == currentStatus ? _self.currentStatus : currentStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceStatusModel].
extension AttendanceStatusModelPatterns on AttendanceStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCheckedIn,  DateTime? lastCheckIn,  DateTime? lastCheckOut,  int todayDuration,  String currentStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
return $default(_that.isCheckedIn,_that.lastCheckIn,_that.lastCheckOut,_that.todayDuration,_that.currentStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCheckedIn,  DateTime? lastCheckIn,  DateTime? lastCheckOut,  int todayDuration,  String currentStatus)  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatusModel():
return $default(_that.isCheckedIn,_that.lastCheckIn,_that.lastCheckOut,_that.todayDuration,_that.currentStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCheckedIn,  DateTime? lastCheckIn,  DateTime? lastCheckOut,  int todayDuration,  String currentStatus)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
return $default(_that.isCheckedIn,_that.lastCheckIn,_that.lastCheckOut,_that.todayDuration,_that.currentStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceStatusModel implements AttendanceStatusModel {
  const _AttendanceStatusModel({required this.isCheckedIn, required this.lastCheckIn, required this.lastCheckOut, required this.todayDuration, required this.currentStatus});
  factory _AttendanceStatusModel.fromJson(Map<String, dynamic> json) => _$AttendanceStatusModelFromJson(json);

@override final  bool isCheckedIn;
@override final  DateTime? lastCheckIn;
@override final  DateTime? lastCheckOut;
@override final  int todayDuration;
@override final  String currentStatus;

/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStatusModelCopyWith<_AttendanceStatusModel> get copyWith => __$AttendanceStatusModelCopyWithImpl<_AttendanceStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceStatusModel&&(identical(other.isCheckedIn, isCheckedIn) || other.isCheckedIn == isCheckedIn)&&(identical(other.lastCheckIn, lastCheckIn) || other.lastCheckIn == lastCheckIn)&&(identical(other.lastCheckOut, lastCheckOut) || other.lastCheckOut == lastCheckOut)&&(identical(other.todayDuration, todayDuration) || other.todayDuration == todayDuration)&&(identical(other.currentStatus, currentStatus) || other.currentStatus == currentStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCheckedIn,lastCheckIn,lastCheckOut,todayDuration,currentStatus);

@override
String toString() {
  return 'AttendanceStatusModel(isCheckedIn: $isCheckedIn, lastCheckIn: $lastCheckIn, lastCheckOut: $lastCheckOut, todayDuration: $todayDuration, currentStatus: $currentStatus)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStatusModelCopyWith<$Res> implements $AttendanceStatusModelCopyWith<$Res> {
  factory _$AttendanceStatusModelCopyWith(_AttendanceStatusModel value, $Res Function(_AttendanceStatusModel) _then) = __$AttendanceStatusModelCopyWithImpl;
@override @useResult
$Res call({
 bool isCheckedIn, DateTime? lastCheckIn, DateTime? lastCheckOut, int todayDuration, String currentStatus
});




}
/// @nodoc
class __$AttendanceStatusModelCopyWithImpl<$Res>
    implements _$AttendanceStatusModelCopyWith<$Res> {
  __$AttendanceStatusModelCopyWithImpl(this._self, this._then);

  final _AttendanceStatusModel _self;
  final $Res Function(_AttendanceStatusModel) _then;

/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCheckedIn = null,Object? lastCheckIn = freezed,Object? lastCheckOut = freezed,Object? todayDuration = null,Object? currentStatus = null,}) {
  return _then(_AttendanceStatusModel(
isCheckedIn: null == isCheckedIn ? _self.isCheckedIn : isCheckedIn // ignore: cast_nullable_to_non_nullable
as bool,lastCheckIn: freezed == lastCheckIn ? _self.lastCheckIn : lastCheckIn // ignore: cast_nullable_to_non_nullable
as DateTime?,lastCheckOut: freezed == lastCheckOut ? _self.lastCheckOut : lastCheckOut // ignore: cast_nullable_to_non_nullable
as DateTime?,todayDuration: null == todayDuration ? _self.todayDuration : todayDuration // ignore: cast_nullable_to_non_nullable
as int,currentStatus: null == currentStatus ? _self.currentStatus : currentStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserModel {

 String get id; String get email; String get role;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role);

@override
String toString() {
  return 'UserModel(id: $id, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String email, String role
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? role = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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
case _UserModel():
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
case _UserModel() when $default != null:
return $default(_that.id,_that.email,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.email, required this.role});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String email;
@override final  String role;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,role);

@override
String toString() {
  return 'UserModel(id: $id, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String role
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? role = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
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


/// @nodoc
mixin _$EmployeeProfileModel {

 String get id; String get firstName; String get lastName; String get email; String get position; UserModel get user; ShiftModel? get shift;
/// Create a copy of EmployeeProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeProfileModelCopyWith<EmployeeProfileModel> get copyWith => _$EmployeeProfileModelCopyWithImpl<EmployeeProfileModel>(this as EmployeeProfileModel, _$identity);

  /// Serializes this EmployeeProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.position, position) || other.position == position)&&(identical(other.user, user) || other.user == user)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,position,user,shift);

@override
String toString() {
  return 'EmployeeProfileModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, position: $position, user: $user, shift: $shift)';
}


}

/// @nodoc
abstract mixin class $EmployeeProfileModelCopyWith<$Res>  {
  factory $EmployeeProfileModelCopyWith(EmployeeProfileModel value, $Res Function(EmployeeProfileModel) _then) = _$EmployeeProfileModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String email, String position, UserModel user, ShiftModel? shift
});


$UserModelCopyWith<$Res> get user;$ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class _$EmployeeProfileModelCopyWithImpl<$Res>
    implements $EmployeeProfileModelCopyWith<$Res> {
  _$EmployeeProfileModelCopyWithImpl(this._self, this._then);

  final EmployeeProfileModel _self;
  final $Res Function(EmployeeProfileModel) _then;

/// Create a copy of EmployeeProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? position = null,Object? user = null,Object? shift = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}
/// Create a copy of EmployeeProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeProfileModel
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


/// Adds pattern-matching-related methods to [EmployeeProfileModel].
extension EmployeeProfileModelPatterns on EmployeeProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String position,  UserModel user,  ShiftModel? shift)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeProfileModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.position,_that.user,_that.shift);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String position,  UserModel user,  ShiftModel? shift)  $default,) {final _that = this;
switch (_that) {
case _EmployeeProfileModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.position,_that.user,_that.shift);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String email,  String position,  UserModel user,  ShiftModel? shift)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeProfileModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.position,_that.user,_that.shift);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeProfileModel implements EmployeeProfileModel {
  const _EmployeeProfileModel({required this.id, required this.firstName, required this.lastName, required this.email, required this.position, required this.user, required this.shift});
  factory _EmployeeProfileModel.fromJson(Map<String, dynamic> json) => _$EmployeeProfileModelFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String position;
@override final  UserModel user;
@override final  ShiftModel? shift;

/// Create a copy of EmployeeProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeProfileModelCopyWith<_EmployeeProfileModel> get copyWith => __$EmployeeProfileModelCopyWithImpl<_EmployeeProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.position, position) || other.position == position)&&(identical(other.user, user) || other.user == user)&&(identical(other.shift, shift) || other.shift == shift));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,position,user,shift);

@override
String toString() {
  return 'EmployeeProfileModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, position: $position, user: $user, shift: $shift)';
}


}

/// @nodoc
abstract mixin class _$EmployeeProfileModelCopyWith<$Res> implements $EmployeeProfileModelCopyWith<$Res> {
  factory _$EmployeeProfileModelCopyWith(_EmployeeProfileModel value, $Res Function(_EmployeeProfileModel) _then) = __$EmployeeProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String email, String position, UserModel user, ShiftModel? shift
});


@override $UserModelCopyWith<$Res> get user;@override $ShiftModelCopyWith<$Res>? get shift;

}
/// @nodoc
class __$EmployeeProfileModelCopyWithImpl<$Res>
    implements _$EmployeeProfileModelCopyWith<$Res> {
  __$EmployeeProfileModelCopyWithImpl(this._self, this._then);

  final _EmployeeProfileModel _self;
  final $Res Function(_EmployeeProfileModel) _then;

/// Create a copy of EmployeeProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? position = null,Object? user = null,Object? shift = freezed,}) {
  return _then(_EmployeeProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,
  ));
}

/// Create a copy of EmployeeProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of EmployeeProfileModel
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
mixin _$AttendanceHistoryModel {

 List<AttendanceRecordModel> get records; int get total; int get page; int get limit;
/// Create a copy of AttendanceHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceHistoryModelCopyWith<AttendanceHistoryModel> get copyWith => _$AttendanceHistoryModelCopyWithImpl<AttendanceHistoryModel>(this as AttendanceHistoryModel, _$identity);

  /// Serializes this AttendanceHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceHistoryModel&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),total,page,limit);

@override
String toString() {
  return 'AttendanceHistoryModel(records: $records, total: $total, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $AttendanceHistoryModelCopyWith<$Res>  {
  factory $AttendanceHistoryModelCopyWith(AttendanceHistoryModel value, $Res Function(AttendanceHistoryModel) _then) = _$AttendanceHistoryModelCopyWithImpl;
@useResult
$Res call({
 List<AttendanceRecordModel> records, int total, int page, int limit
});




}
/// @nodoc
class _$AttendanceHistoryModelCopyWithImpl<$Res>
    implements $AttendanceHistoryModelCopyWith<$Res> {
  _$AttendanceHistoryModelCopyWithImpl(this._self, this._then);

  final AttendanceHistoryModel _self;
  final $Res Function(AttendanceHistoryModel) _then;

/// Create a copy of AttendanceHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? total = null,Object? page = null,Object? limit = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecordModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceHistoryModel].
extension AttendanceHistoryModelPatterns on AttendanceHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceHistoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AttendanceRecordModel> records,  int total,  int page,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceHistoryModel() when $default != null:
return $default(_that.records,_that.total,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AttendanceRecordModel> records,  int total,  int page,  int limit)  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryModel():
return $default(_that.records,_that.total,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AttendanceRecordModel> records,  int total,  int page,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceHistoryModel() when $default != null:
return $default(_that.records,_that.total,_that.page,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceHistoryModel implements AttendanceHistoryModel {
  const _AttendanceHistoryModel({required final  List<AttendanceRecordModel> records, required this.total, required this.page, required this.limit}): _records = records;
  factory _AttendanceHistoryModel.fromJson(Map<String, dynamic> json) => _$AttendanceHistoryModelFromJson(json);

 final  List<AttendanceRecordModel> _records;
@override List<AttendanceRecordModel> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  int total;
@override final  int page;
@override final  int limit;

/// Create a copy of AttendanceHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceHistoryModelCopyWith<_AttendanceHistoryModel> get copyWith => __$AttendanceHistoryModelCopyWithImpl<_AttendanceHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceHistoryModel&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),total,page,limit);

@override
String toString() {
  return 'AttendanceHistoryModel(records: $records, total: $total, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$AttendanceHistoryModelCopyWith<$Res> implements $AttendanceHistoryModelCopyWith<$Res> {
  factory _$AttendanceHistoryModelCopyWith(_AttendanceHistoryModel value, $Res Function(_AttendanceHistoryModel) _then) = __$AttendanceHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 List<AttendanceRecordModel> records, int total, int page, int limit
});




}
/// @nodoc
class __$AttendanceHistoryModelCopyWithImpl<$Res>
    implements _$AttendanceHistoryModelCopyWith<$Res> {
  __$AttendanceHistoryModelCopyWithImpl(this._self, this._then);

  final _AttendanceHistoryModel _self;
  final $Res Function(_AttendanceHistoryModel) _then;

/// Create a copy of AttendanceHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? total = null,Object? page = null,Object? limit = null,}) {
  return _then(_AttendanceHistoryModel(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecordModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LocationInfoModel {

 String? get locationId; double? get latitude; double? get longitude; double? get accuracy; String? get name;
/// Create a copy of LocationInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationInfoModelCopyWith<LocationInfoModel> get copyWith => _$LocationInfoModelCopyWithImpl<LocationInfoModel>(this as LocationInfoModel, _$identity);

  /// Serializes this LocationInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationInfoModel&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationId,latitude,longitude,accuracy,name);

@override
String toString() {
  return 'LocationInfoModel(locationId: $locationId, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, name: $name)';
}


}

/// @nodoc
abstract mixin class $LocationInfoModelCopyWith<$Res>  {
  factory $LocationInfoModelCopyWith(LocationInfoModel value, $Res Function(LocationInfoModel) _then) = _$LocationInfoModelCopyWithImpl;
@useResult
$Res call({
 String? locationId, double? latitude, double? longitude, double? accuracy, String? name
});




}
/// @nodoc
class _$LocationInfoModelCopyWithImpl<$Res>
    implements $LocationInfoModelCopyWith<$Res> {
  _$LocationInfoModelCopyWithImpl(this._self, this._then);

  final LocationInfoModel _self;
  final $Res Function(LocationInfoModel) _then;

/// Create a copy of LocationInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationId = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationInfoModel].
extension LocationInfoModelPatterns on LocationInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _LocationInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _LocationInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? locationId,  double? latitude,  double? longitude,  double? accuracy,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationInfoModel() when $default != null:
return $default(_that.locationId,_that.latitude,_that.longitude,_that.accuracy,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? locationId,  double? latitude,  double? longitude,  double? accuracy,  String? name)  $default,) {final _that = this;
switch (_that) {
case _LocationInfoModel():
return $default(_that.locationId,_that.latitude,_that.longitude,_that.accuracy,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? locationId,  double? latitude,  double? longitude,  double? accuracy,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _LocationInfoModel() when $default != null:
return $default(_that.locationId,_that.latitude,_that.longitude,_that.accuracy,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationInfoModel implements LocationInfoModel {
  const _LocationInfoModel({this.locationId, this.latitude, this.longitude, this.accuracy, this.name});
  factory _LocationInfoModel.fromJson(Map<String, dynamic> json) => _$LocationInfoModelFromJson(json);

@override final  String? locationId;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;
@override final  String? name;

/// Create a copy of LocationInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationInfoModelCopyWith<_LocationInfoModel> get copyWith => __$LocationInfoModelCopyWithImpl<_LocationInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationInfoModel&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationId,latitude,longitude,accuracy,name);

@override
String toString() {
  return 'LocationInfoModel(locationId: $locationId, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, name: $name)';
}


}

/// @nodoc
abstract mixin class _$LocationInfoModelCopyWith<$Res> implements $LocationInfoModelCopyWith<$Res> {
  factory _$LocationInfoModelCopyWith(_LocationInfoModel value, $Res Function(_LocationInfoModel) _then) = __$LocationInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String? locationId, double? latitude, double? longitude, double? accuracy, String? name
});




}
/// @nodoc
class __$LocationInfoModelCopyWithImpl<$Res>
    implements _$LocationInfoModelCopyWith<$Res> {
  __$LocationInfoModelCopyWithImpl(this._self, this._then);

  final _LocationInfoModel _self;
  final $Res Function(_LocationInfoModel) _then;

/// Create a copy of LocationInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationId = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? name = freezed,}) {
  return _then(_LocationInfoModel(
locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DeviceInfoModel {

 String? get name; String? get os; String? get browser; String? get userAgent;
/// Create a copy of DeviceInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceInfoModelCopyWith<DeviceInfoModel> get copyWith => _$DeviceInfoModelCopyWithImpl<DeviceInfoModel>(this as DeviceInfoModel, _$identity);

  /// Serializes this DeviceInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.os, os) || other.os == os)&&(identical(other.browser, browser) || other.browser == browser)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,os,browser,userAgent);

@override
String toString() {
  return 'DeviceInfoModel(name: $name, os: $os, browser: $browser, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class $DeviceInfoModelCopyWith<$Res>  {
  factory $DeviceInfoModelCopyWith(DeviceInfoModel value, $Res Function(DeviceInfoModel) _then) = _$DeviceInfoModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? os, String? browser, String? userAgent
});




}
/// @nodoc
class _$DeviceInfoModelCopyWithImpl<$Res>
    implements $DeviceInfoModelCopyWith<$Res> {
  _$DeviceInfoModelCopyWithImpl(this._self, this._then);

  final DeviceInfoModel _self;
  final $Res Function(DeviceInfoModel) _then;

/// Create a copy of DeviceInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? os = freezed,Object? browser = freezed,Object? userAgent = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,browser: freezed == browser ? _self.browser : browser // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceInfoModel].
extension DeviceInfoModelPatterns on DeviceInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _DeviceInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? os,  String? browser,  String? userAgent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceInfoModel() when $default != null:
return $default(_that.name,_that.os,_that.browser,_that.userAgent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? os,  String? browser,  String? userAgent)  $default,) {final _that = this;
switch (_that) {
case _DeviceInfoModel():
return $default(_that.name,_that.os,_that.browser,_that.userAgent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? os,  String? browser,  String? userAgent)?  $default,) {final _that = this;
switch (_that) {
case _DeviceInfoModel() when $default != null:
return $default(_that.name,_that.os,_that.browser,_that.userAgent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceInfoModel implements DeviceInfoModel {
  const _DeviceInfoModel({this.name, this.os, this.browser, this.userAgent});
  factory _DeviceInfoModel.fromJson(Map<String, dynamic> json) => _$DeviceInfoModelFromJson(json);

@override final  String? name;
@override final  String? os;
@override final  String? browser;
@override final  String? userAgent;

/// Create a copy of DeviceInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceInfoModelCopyWith<_DeviceInfoModel> get copyWith => __$DeviceInfoModelCopyWithImpl<_DeviceInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.os, os) || other.os == os)&&(identical(other.browser, browser) || other.browser == browser)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,os,browser,userAgent);

@override
String toString() {
  return 'DeviceInfoModel(name: $name, os: $os, browser: $browser, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class _$DeviceInfoModelCopyWith<$Res> implements $DeviceInfoModelCopyWith<$Res> {
  factory _$DeviceInfoModelCopyWith(_DeviceInfoModel value, $Res Function(_DeviceInfoModel) _then) = __$DeviceInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? os, String? browser, String? userAgent
});




}
/// @nodoc
class __$DeviceInfoModelCopyWithImpl<$Res>
    implements _$DeviceInfoModelCopyWith<$Res> {
  __$DeviceInfoModelCopyWithImpl(this._self, this._then);

  final _DeviceInfoModel _self;
  final $Res Function(_DeviceInfoModel) _then;

/// Create a copy of DeviceInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? os = freezed,Object? browser = freezed,Object? userAgent = freezed,}) {
  return _then(_DeviceInfoModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,os: freezed == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String?,browser: freezed == browser ? _self.browser : browser // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
