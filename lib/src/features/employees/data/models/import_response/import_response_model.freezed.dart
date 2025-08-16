// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImportResponseModel {

 bool get success; String get message; int get importedCount; List<String> get errors;
/// Create a copy of ImportResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportResponseModelCopyWith<ImportResponseModel> get copyWith => _$ImportResponseModelCopyWithImpl<ImportResponseModel>(this as ImportResponseModel, _$identity);

  /// Serializes this ImportResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.importedCount, importedCount) || other.importedCount == importedCount)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,importedCount,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ImportResponseModel(success: $success, message: $message, importedCount: $importedCount, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ImportResponseModelCopyWith<$Res>  {
  factory $ImportResponseModelCopyWith(ImportResponseModel value, $Res Function(ImportResponseModel) _then) = _$ImportResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, String message, int importedCount, List<String> errors
});




}
/// @nodoc
class _$ImportResponseModelCopyWithImpl<$Res>
    implements $ImportResponseModelCopyWith<$Res> {
  _$ImportResponseModelCopyWithImpl(this._self, this._then);

  final ImportResponseModel _self;
  final $Res Function(ImportResponseModel) _then;

/// Create a copy of ImportResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? importedCount = null,Object? errors = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,importedCount: null == importedCount ? _self.importedCount : importedCount // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ImportResponseModel].
extension ImportResponseModelPatterns on ImportResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ImportResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ImportResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  int importedCount,  List<String> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.importedCount,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  int importedCount,  List<String> errors)  $default,) {final _that = this;
switch (_that) {
case _ImportResponseModel():
return $default(_that.success,_that.message,_that.importedCount,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  int importedCount,  List<String> errors)?  $default,) {final _that = this;
switch (_that) {
case _ImportResponseModel() when $default != null:
return $default(_that.success,_that.message,_that.importedCount,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ImportResponseModel implements ImportResponseModel {
  const _ImportResponseModel({required this.success, required this.message, this.importedCount = 0, final  List<String> errors = const []}): _errors = errors;
  factory _ImportResponseModel.fromJson(Map<String, dynamic> json) => _$ImportResponseModelFromJson(json);

@override final  bool success;
@override final  String message;
@override@JsonKey() final  int importedCount;
 final  List<String> _errors;
@override@JsonKey() List<String> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ImportResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportResponseModelCopyWith<_ImportResponseModel> get copyWith => __$ImportResponseModelCopyWithImpl<_ImportResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImportResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.importedCount, importedCount) || other.importedCount == importedCount)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,importedCount,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ImportResponseModel(success: $success, message: $message, importedCount: $importedCount, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ImportResponseModelCopyWith<$Res> implements $ImportResponseModelCopyWith<$Res> {
  factory _$ImportResponseModelCopyWith(_ImportResponseModel value, $Res Function(_ImportResponseModel) _then) = __$ImportResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, int importedCount, List<String> errors
});




}
/// @nodoc
class __$ImportResponseModelCopyWithImpl<$Res>
    implements _$ImportResponseModelCopyWith<$Res> {
  __$ImportResponseModelCopyWithImpl(this._self, this._then);

  final _ImportResponseModel _self;
  final $Res Function(_ImportResponseModel) _then;

/// Create a copy of ImportResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? importedCount = null,Object? errors = null,}) {
  return _then(_ImportResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,importedCount: null == importedCount ? _self.importedCount : importedCount // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
