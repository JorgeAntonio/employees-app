// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_code_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidateCodeRequestModel {

 String get code; double? get latitude; double? get longitude; double? get accuracy;
/// Create a copy of ValidateCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateCodeRequestModelCopyWith<ValidateCodeRequestModel> get copyWith => _$ValidateCodeRequestModelCopyWithImpl<ValidateCodeRequestModel>(this as ValidateCodeRequestModel, _$identity);

  /// Serializes this ValidateCodeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateCodeRequestModel&&(identical(other.code, code) || other.code == code)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,latitude,longitude,accuracy);

@override
String toString() {
  return 'ValidateCodeRequestModel(code: $code, latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class $ValidateCodeRequestModelCopyWith<$Res>  {
  factory $ValidateCodeRequestModelCopyWith(ValidateCodeRequestModel value, $Res Function(ValidateCodeRequestModel) _then) = _$ValidateCodeRequestModelCopyWithImpl;
@useResult
$Res call({
 String code, double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class _$ValidateCodeRequestModelCopyWithImpl<$Res>
    implements $ValidateCodeRequestModelCopyWith<$Res> {
  _$ValidateCodeRequestModelCopyWithImpl(this._self, this._then);

  final ValidateCodeRequestModel _self;
  final $Res Function(ValidateCodeRequestModel) _then;

/// Create a copy of ValidateCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [ValidateCodeRequestModel].
extension ValidateCodeRequestModelPatterns on ValidateCodeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidateCodeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidateCodeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidateCodeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ValidateCodeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidateCodeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ValidateCodeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  double? latitude,  double? longitude,  double? accuracy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidateCodeRequestModel() when $default != null:
return $default(_that.code,_that.latitude,_that.longitude,_that.accuracy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  double? latitude,  double? longitude,  double? accuracy)  $default,) {final _that = this;
switch (_that) {
case _ValidateCodeRequestModel():
return $default(_that.code,_that.latitude,_that.longitude,_that.accuracy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  double? latitude,  double? longitude,  double? accuracy)?  $default,) {final _that = this;
switch (_that) {
case _ValidateCodeRequestModel() when $default != null:
return $default(_that.code,_that.latitude,_that.longitude,_that.accuracy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidateCodeRequestModel implements ValidateCodeRequestModel {
  const _ValidateCodeRequestModel({required this.code, this.latitude, this.longitude, this.accuracy});
  factory _ValidateCodeRequestModel.fromJson(Map<String, dynamic> json) => _$ValidateCodeRequestModelFromJson(json);

@override final  String code;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;

/// Create a copy of ValidateCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidateCodeRequestModelCopyWith<_ValidateCodeRequestModel> get copyWith => __$ValidateCodeRequestModelCopyWithImpl<_ValidateCodeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidateCodeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidateCodeRequestModel&&(identical(other.code, code) || other.code == code)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,latitude,longitude,accuracy);

@override
String toString() {
  return 'ValidateCodeRequestModel(code: $code, latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class _$ValidateCodeRequestModelCopyWith<$Res> implements $ValidateCodeRequestModelCopyWith<$Res> {
  factory _$ValidateCodeRequestModelCopyWith(_ValidateCodeRequestModel value, $Res Function(_ValidateCodeRequestModel) _then) = __$ValidateCodeRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String code, double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class __$ValidateCodeRequestModelCopyWithImpl<$Res>
    implements _$ValidateCodeRequestModelCopyWith<$Res> {
  __$ValidateCodeRequestModelCopyWithImpl(this._self, this._then);

  final _ValidateCodeRequestModel _self;
  final $Res Function(_ValidateCodeRequestModel) _then;

/// Create a copy of ValidateCodeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_ValidateCodeRequestModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
