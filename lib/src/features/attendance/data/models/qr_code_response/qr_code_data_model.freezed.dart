// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeDataModel {

 String get id; String get firstName; String get lastName; String get dni; String get position; String get department;
/// Create a copy of EmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeDataModelCopyWith<EmployeeDataModel> get copyWith => _$EmployeeDataModelCopyWithImpl<EmployeeDataModel>(this as EmployeeDataModel, _$identity);

  /// Serializes this EmployeeDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,dni,position,department);

@override
String toString() {
  return 'EmployeeDataModel(id: $id, firstName: $firstName, lastName: $lastName, dni: $dni, position: $position, department: $department)';
}


}

/// @nodoc
abstract mixin class $EmployeeDataModelCopyWith<$Res>  {
  factory $EmployeeDataModelCopyWith(EmployeeDataModel value, $Res Function(EmployeeDataModel) _then) = _$EmployeeDataModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String dni, String position, String department
});




}
/// @nodoc
class _$EmployeeDataModelCopyWithImpl<$Res>
    implements $EmployeeDataModelCopyWith<$Res> {
  _$EmployeeDataModelCopyWithImpl(this._self, this._then);

  final EmployeeDataModel _self;
  final $Res Function(EmployeeDataModel) _then;

/// Create a copy of EmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? position = null,Object? department = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeDataModel].
extension EmployeeDataModelPatterns on EmployeeDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeDataModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeDataModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department)  $default,) {final _that = this;
switch (_that) {
case _EmployeeDataModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String dni,  String position,  String department)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeDataModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.dni,_that.position,_that.department);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeDataModel implements EmployeeDataModel {
  const _EmployeeDataModel({required this.id, required this.firstName, required this.lastName, required this.dni, required this.position, required this.department});
  factory _EmployeeDataModel.fromJson(Map<String, dynamic> json) => _$EmployeeDataModelFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String dni;
@override final  String position;
@override final  String department;

/// Create a copy of EmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeDataModelCopyWith<_EmployeeDataModel> get copyWith => __$EmployeeDataModelCopyWithImpl<_EmployeeDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.dni, dni) || other.dni == dni)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,dni,position,department);

@override
String toString() {
  return 'EmployeeDataModel(id: $id, firstName: $firstName, lastName: $lastName, dni: $dni, position: $position, department: $department)';
}


}

/// @nodoc
abstract mixin class _$EmployeeDataModelCopyWith<$Res> implements $EmployeeDataModelCopyWith<$Res> {
  factory _$EmployeeDataModelCopyWith(_EmployeeDataModel value, $Res Function(_EmployeeDataModel) _then) = __$EmployeeDataModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String dni, String position, String department
});




}
/// @nodoc
class __$EmployeeDataModelCopyWithImpl<$Res>
    implements _$EmployeeDataModelCopyWith<$Res> {
  __$EmployeeDataModelCopyWithImpl(this._self, this._then);

  final _EmployeeDataModel _self;
  final $Res Function(_EmployeeDataModel) _then;

/// Create a copy of EmployeeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? dni = null,Object? position = null,Object? department = null,}) {
  return _then(_EmployeeDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,dni: null == dni ? _self.dni : dni // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$QrCodeDataModel {

 String get qrCode; String get manualCode; EmployeeDataModel get employeeData; DateTime get expiresAt;
/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeDataModelCopyWith<QrCodeDataModel> get copyWith => _$QrCodeDataModelCopyWithImpl<QrCodeDataModel>(this as QrCodeDataModel, _$identity);

  /// Serializes this QrCodeDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeDataModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.manualCode, manualCode) || other.manualCode == manualCode)&&(identical(other.employeeData, employeeData) || other.employeeData == employeeData)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode,manualCode,employeeData,expiresAt);

@override
String toString() {
  return 'QrCodeDataModel(qrCode: $qrCode, manualCode: $manualCode, employeeData: $employeeData, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $QrCodeDataModelCopyWith<$Res>  {
  factory $QrCodeDataModelCopyWith(QrCodeDataModel value, $Res Function(QrCodeDataModel) _then) = _$QrCodeDataModelCopyWithImpl;
@useResult
$Res call({
 String qrCode, String manualCode, EmployeeDataModel employeeData, DateTime expiresAt
});


$EmployeeDataModelCopyWith<$Res> get employeeData;

}
/// @nodoc
class _$QrCodeDataModelCopyWithImpl<$Res>
    implements $QrCodeDataModelCopyWith<$Res> {
  _$QrCodeDataModelCopyWithImpl(this._self, this._then);

  final QrCodeDataModel _self;
  final $Res Function(QrCodeDataModel) _then;

/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? qrCode = null,Object? manualCode = null,Object? employeeData = null,Object? expiresAt = null,}) {
  return _then(_self.copyWith(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,manualCode: null == manualCode ? _self.manualCode : manualCode // ignore: cast_nullable_to_non_nullable
as String,employeeData: null == employeeData ? _self.employeeData : employeeData // ignore: cast_nullable_to_non_nullable
as EmployeeDataModel,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeDataModelCopyWith<$Res> get employeeData {
  
  return $EmployeeDataModelCopyWith<$Res>(_self.employeeData, (value) {
    return _then(_self.copyWith(employeeData: value));
  });
}
}


/// Adds pattern-matching-related methods to [QrCodeDataModel].
extension QrCodeDataModelPatterns on QrCodeDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrCodeDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrCodeDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrCodeDataModel value)  $default,){
final _that = this;
switch (_that) {
case _QrCodeDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrCodeDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _QrCodeDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String qrCode,  String manualCode,  EmployeeDataModel employeeData,  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrCodeDataModel() when $default != null:
return $default(_that.qrCode,_that.manualCode,_that.employeeData,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String qrCode,  String manualCode,  EmployeeDataModel employeeData,  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _QrCodeDataModel():
return $default(_that.qrCode,_that.manualCode,_that.employeeData,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String qrCode,  String manualCode,  EmployeeDataModel employeeData,  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _QrCodeDataModel() when $default != null:
return $default(_that.qrCode,_that.manualCode,_that.employeeData,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrCodeDataModel implements QrCodeDataModel {
  const _QrCodeDataModel({required this.qrCode, required this.manualCode, required this.employeeData, required this.expiresAt});
  factory _QrCodeDataModel.fromJson(Map<String, dynamic> json) => _$QrCodeDataModelFromJson(json);

@override final  String qrCode;
@override final  String manualCode;
@override final  EmployeeDataModel employeeData;
@override final  DateTime expiresAt;

/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrCodeDataModelCopyWith<_QrCodeDataModel> get copyWith => __$QrCodeDataModelCopyWithImpl<_QrCodeDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrCodeDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrCodeDataModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.manualCode, manualCode) || other.manualCode == manualCode)&&(identical(other.employeeData, employeeData) || other.employeeData == employeeData)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode,manualCode,employeeData,expiresAt);

@override
String toString() {
  return 'QrCodeDataModel(qrCode: $qrCode, manualCode: $manualCode, employeeData: $employeeData, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$QrCodeDataModelCopyWith<$Res> implements $QrCodeDataModelCopyWith<$Res> {
  factory _$QrCodeDataModelCopyWith(_QrCodeDataModel value, $Res Function(_QrCodeDataModel) _then) = __$QrCodeDataModelCopyWithImpl;
@override @useResult
$Res call({
 String qrCode, String manualCode, EmployeeDataModel employeeData, DateTime expiresAt
});


@override $EmployeeDataModelCopyWith<$Res> get employeeData;

}
/// @nodoc
class __$QrCodeDataModelCopyWithImpl<$Res>
    implements _$QrCodeDataModelCopyWith<$Res> {
  __$QrCodeDataModelCopyWithImpl(this._self, this._then);

  final _QrCodeDataModel _self;
  final $Res Function(_QrCodeDataModel) _then;

/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qrCode = null,Object? manualCode = null,Object? employeeData = null,Object? expiresAt = null,}) {
  return _then(_QrCodeDataModel(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,manualCode: null == manualCode ? _self.manualCode : manualCode // ignore: cast_nullable_to_non_nullable
as String,employeeData: null == employeeData ? _self.employeeData : employeeData // ignore: cast_nullable_to_non_nullable
as EmployeeDataModel,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeDataModelCopyWith<$Res> get employeeData {
  
  return $EmployeeDataModelCopyWith<$Res>(_self.employeeData, (value) {
    return _then(_self.copyWith(employeeData: value));
  });
}
}

// dart format on
