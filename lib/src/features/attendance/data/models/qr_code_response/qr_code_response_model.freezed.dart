// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QrCodeResponseModel {

 bool get success; QrCodeDataModel get data;
/// Create a copy of QrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QrCodeResponseModelCopyWith<QrCodeResponseModel> get copyWith => _$QrCodeResponseModelCopyWithImpl<QrCodeResponseModel>(this as QrCodeResponseModel, _$identity);

  /// Serializes this QrCodeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QrCodeResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'QrCodeResponseModel(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $QrCodeResponseModelCopyWith<$Res>  {
  factory $QrCodeResponseModelCopyWith(QrCodeResponseModel value, $Res Function(QrCodeResponseModel) _then) = _$QrCodeResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, QrCodeDataModel data
});


$QrCodeDataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$QrCodeResponseModelCopyWithImpl<$Res>
    implements $QrCodeResponseModelCopyWith<$Res> {
  _$QrCodeResponseModelCopyWithImpl(this._self, this._then);

  final QrCodeResponseModel _self;
  final $Res Function(QrCodeResponseModel) _then;

/// Create a copy of QrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as QrCodeDataModel,
  ));
}
/// Create a copy of QrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrCodeDataModelCopyWith<$Res> get data {
  
  return $QrCodeDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [QrCodeResponseModel].
extension QrCodeResponseModelPatterns on QrCodeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QrCodeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QrCodeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QrCodeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _QrCodeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QrCodeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _QrCodeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  QrCodeDataModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QrCodeResponseModel() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  QrCodeDataModel data)  $default,) {final _that = this;
switch (_that) {
case _QrCodeResponseModel():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  QrCodeDataModel data)?  $default,) {final _that = this;
switch (_that) {
case _QrCodeResponseModel() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QrCodeResponseModel implements QrCodeResponseModel {
  const _QrCodeResponseModel({required this.success, required this.data});
  factory _QrCodeResponseModel.fromJson(Map<String, dynamic> json) => _$QrCodeResponseModelFromJson(json);

@override final  bool success;
@override final  QrCodeDataModel data;

/// Create a copy of QrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QrCodeResponseModelCopyWith<_QrCodeResponseModel> get copyWith => __$QrCodeResponseModelCopyWithImpl<_QrCodeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QrCodeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QrCodeResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'QrCodeResponseModel(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$QrCodeResponseModelCopyWith<$Res> implements $QrCodeResponseModelCopyWith<$Res> {
  factory _$QrCodeResponseModelCopyWith(_QrCodeResponseModel value, $Res Function(_QrCodeResponseModel) _then) = __$QrCodeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, QrCodeDataModel data
});


@override $QrCodeDataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$QrCodeResponseModelCopyWithImpl<$Res>
    implements _$QrCodeResponseModelCopyWith<$Res> {
  __$QrCodeResponseModelCopyWithImpl(this._self, this._then);

  final _QrCodeResponseModel _self;
  final $Res Function(_QrCodeResponseModel) _then;

/// Create a copy of QrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_QrCodeResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as QrCodeDataModel,
  ));
}

/// Create a copy of QrCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QrCodeDataModelCopyWith<$Res> get data {
  
  return $QrCodeDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
