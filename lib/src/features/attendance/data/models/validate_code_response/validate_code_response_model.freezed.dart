// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_code_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidateCodeResponseModel {

 bool get success; ValidateCodeDataModel? get data; String? get message;
/// Create a copy of ValidateCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateCodeResponseModelCopyWith<ValidateCodeResponseModel> get copyWith => _$ValidateCodeResponseModelCopyWithImpl<ValidateCodeResponseModel>(this as ValidateCodeResponseModel, _$identity);

  /// Serializes this ValidateCodeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateCodeResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'ValidateCodeResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $ValidateCodeResponseModelCopyWith<$Res>  {
  factory $ValidateCodeResponseModelCopyWith(ValidateCodeResponseModel value, $Res Function(ValidateCodeResponseModel) _then) = _$ValidateCodeResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, ValidateCodeDataModel? data, String? message
});


$ValidateCodeDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$ValidateCodeResponseModelCopyWithImpl<$Res>
    implements $ValidateCodeResponseModelCopyWith<$Res> {
  _$ValidateCodeResponseModelCopyWithImpl(this._self, this._then);

  final ValidateCodeResponseModel _self;
  final $Res Function(ValidateCodeResponseModel) _then;

/// Create a copy of ValidateCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ValidateCodeDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ValidateCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValidateCodeDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ValidateCodeDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ValidateCodeResponseModel].
extension ValidateCodeResponseModelPatterns on ValidateCodeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidateCodeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidateCodeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidateCodeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ValidateCodeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidateCodeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ValidateCodeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ValidateCodeDataModel? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidateCodeResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ValidateCodeDataModel? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _ValidateCodeResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ValidateCodeDataModel? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _ValidateCodeResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidateCodeResponseModel implements ValidateCodeResponseModel {
  const _ValidateCodeResponseModel({required this.success, this.data, this.message});
  factory _ValidateCodeResponseModel.fromJson(Map<String, dynamic> json) => _$ValidateCodeResponseModelFromJson(json);

@override final  bool success;
@override final  ValidateCodeDataModel? data;
@override final  String? message;

/// Create a copy of ValidateCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidateCodeResponseModelCopyWith<_ValidateCodeResponseModel> get copyWith => __$ValidateCodeResponseModelCopyWithImpl<_ValidateCodeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidateCodeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidateCodeResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data,message);

@override
String toString() {
  return 'ValidateCodeResponseModel(success: $success, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ValidateCodeResponseModelCopyWith<$Res> implements $ValidateCodeResponseModelCopyWith<$Res> {
  factory _$ValidateCodeResponseModelCopyWith(_ValidateCodeResponseModel value, $Res Function(_ValidateCodeResponseModel) _then) = __$ValidateCodeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, ValidateCodeDataModel? data, String? message
});


@override $ValidateCodeDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$ValidateCodeResponseModelCopyWithImpl<$Res>
    implements _$ValidateCodeResponseModelCopyWith<$Res> {
  __$ValidateCodeResponseModelCopyWithImpl(this._self, this._then);

  final _ValidateCodeResponseModel _self;
  final $Res Function(_ValidateCodeResponseModel) _then;

/// Create a copy of ValidateCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_ValidateCodeResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ValidateCodeDataModel?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ValidateCodeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValidateCodeDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ValidateCodeDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
