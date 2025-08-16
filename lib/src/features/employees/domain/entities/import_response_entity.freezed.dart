// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImportResponseEntity {

 bool get success; String get message; int get importedCount; List<String> get errors;
/// Create a copy of ImportResponseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportResponseEntityCopyWith<ImportResponseEntity> get copyWith => _$ImportResponseEntityCopyWithImpl<ImportResponseEntity>(this as ImportResponseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportResponseEntity&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.importedCount, importedCount) || other.importedCount == importedCount)&&const DeepCollectionEquality().equals(other.errors, errors));
}


@override
int get hashCode => Object.hash(runtimeType,success,message,importedCount,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ImportResponseEntity(success: $success, message: $message, importedCount: $importedCount, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ImportResponseEntityCopyWith<$Res>  {
  factory $ImportResponseEntityCopyWith(ImportResponseEntity value, $Res Function(ImportResponseEntity) _then) = _$ImportResponseEntityCopyWithImpl;
@useResult
$Res call({
 bool success, String message, int importedCount, List<String> errors
});




}
/// @nodoc
class _$ImportResponseEntityCopyWithImpl<$Res>
    implements $ImportResponseEntityCopyWith<$Res> {
  _$ImportResponseEntityCopyWithImpl(this._self, this._then);

  final ImportResponseEntity _self;
  final $Res Function(ImportResponseEntity) _then;

/// Create a copy of ImportResponseEntity
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


/// Adds pattern-matching-related methods to [ImportResponseEntity].
extension ImportResponseEntityPatterns on ImportResponseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportResponseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportResponseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportResponseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ImportResponseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportResponseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ImportResponseEntity() when $default != null:
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
case _ImportResponseEntity() when $default != null:
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
case _ImportResponseEntity():
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
case _ImportResponseEntity() when $default != null:
return $default(_that.success,_that.message,_that.importedCount,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _ImportResponseEntity implements ImportResponseEntity {
  const _ImportResponseEntity({required this.success, required this.message, required this.importedCount, required final  List<String> errors}): _errors = errors;
  

@override final  bool success;
@override final  String message;
@override final  int importedCount;
 final  List<String> _errors;
@override List<String> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of ImportResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportResponseEntityCopyWith<_ImportResponseEntity> get copyWith => __$ImportResponseEntityCopyWithImpl<_ImportResponseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportResponseEntity&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.importedCount, importedCount) || other.importedCount == importedCount)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,success,message,importedCount,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ImportResponseEntity(success: $success, message: $message, importedCount: $importedCount, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ImportResponseEntityCopyWith<$Res> implements $ImportResponseEntityCopyWith<$Res> {
  factory _$ImportResponseEntityCopyWith(_ImportResponseEntity value, $Res Function(_ImportResponseEntity) _then) = __$ImportResponseEntityCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, int importedCount, List<String> errors
});




}
/// @nodoc
class __$ImportResponseEntityCopyWithImpl<$Res>
    implements _$ImportResponseEntityCopyWith<$Res> {
  __$ImportResponseEntityCopyWithImpl(this._self, this._then);

  final _ImportResponseEntity _self;
  final $Res Function(_ImportResponseEntity) _then;

/// Create a copy of ImportResponseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? importedCount = null,Object? errors = null,}) {
  return _then(_ImportResponseEntity(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,importedCount: null == importedCount ? _self.importedCount : importedCount // ignore: cast_nullable_to_non_nullable
as int,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
