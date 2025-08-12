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
mixin _$QrCodeDataModel {

 String get qrCode; String get manualCode; DateTime get expiresAt; String get type;
/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeDataModelCopyWith<QrCodeDataModel> get copyWith => _$QrCodeDataModelCopyWithImpl<QrCodeDataModel>(this as QrCodeDataModel, _$identity);

  /// Serializes this QrCodeDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeDataModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.manualCode, manualCode) || other.manualCode == manualCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode,manualCode,expiresAt,type);

@override
String toString() {
  return 'QrCodeDataModel(qrCode: $qrCode, manualCode: $manualCode, expiresAt: $expiresAt, type: $type)';
}


}

/// @nodoc
abstract mixin class $QrCodeDataModelCopyWith<$Res>  {
  factory $QrCodeDataModelCopyWith(QrCodeDataModel value, $Res Function(QrCodeDataModel) _then) = _$QrCodeDataModelCopyWithImpl;
@useResult
$Res call({
 String qrCode, String manualCode, DateTime expiresAt, String type
});




}
/// @nodoc
class _$QrCodeDataModelCopyWithImpl<$Res>
    implements $QrCodeDataModelCopyWith<$Res> {
  _$QrCodeDataModelCopyWithImpl(this._self, this._then);

  final QrCodeDataModel _self;
  final $Res Function(QrCodeDataModel) _then;

/// Create a copy of QrCodeDataModel
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String qrCode,  String manualCode,  DateTime expiresAt,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrCodeDataModel() when $default != null:
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
case _QrCodeDataModel():
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
case _QrCodeDataModel() when $default != null:
return $default(_that.qrCode,_that.manualCode,_that.expiresAt,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrCodeDataModel implements QrCodeDataModel {
  const _QrCodeDataModel({required this.qrCode, required this.manualCode, required this.expiresAt, required this.type});
  factory _QrCodeDataModel.fromJson(Map<String, dynamic> json) => _$QrCodeDataModelFromJson(json);

@override final  String qrCode;
@override final  String manualCode;
@override final  DateTime expiresAt;
@override final  String type;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrCodeDataModel&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.manualCode, manualCode) || other.manualCode == manualCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,qrCode,manualCode,expiresAt,type);

@override
String toString() {
  return 'QrCodeDataModel(qrCode: $qrCode, manualCode: $manualCode, expiresAt: $expiresAt, type: $type)';
}


}

/// @nodoc
abstract mixin class _$QrCodeDataModelCopyWith<$Res> implements $QrCodeDataModelCopyWith<$Res> {
  factory _$QrCodeDataModelCopyWith(_QrCodeDataModel value, $Res Function(_QrCodeDataModel) _then) = __$QrCodeDataModelCopyWithImpl;
@override @useResult
$Res call({
 String qrCode, String manualCode, DateTime expiresAt, String type
});




}
/// @nodoc
class __$QrCodeDataModelCopyWithImpl<$Res>
    implements _$QrCodeDataModelCopyWith<$Res> {
  __$QrCodeDataModelCopyWithImpl(this._self, this._then);

  final _QrCodeDataModel _self;
  final $Res Function(_QrCodeDataModel) _then;

/// Create a copy of QrCodeDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? qrCode = null,Object? manualCode = null,Object? expiresAt = null,Object? type = null,}) {
  return _then(_QrCodeDataModel(
qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,manualCode: null == manualCode ? _self.manualCode : manualCode // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
