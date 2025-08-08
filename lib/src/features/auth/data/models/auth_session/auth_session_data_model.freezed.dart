// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthSessionDataModel {

 AuthSessionUserModel get user; String get token;
/// Create a copy of AuthSessionDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSessionDataModelCopyWith<AuthSessionDataModel> get copyWith => _$AuthSessionDataModelCopyWithImpl<AuthSessionDataModel>(this as AuthSessionDataModel, _$identity);

  /// Serializes this AuthSessionDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSessionDataModel&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString() {
  return 'AuthSessionDataModel(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class $AuthSessionDataModelCopyWith<$Res>  {
  factory $AuthSessionDataModelCopyWith(AuthSessionDataModel value, $Res Function(AuthSessionDataModel) _then) = _$AuthSessionDataModelCopyWithImpl;
@useResult
$Res call({
 AuthSessionUserModel user, String token
});


$AuthSessionUserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthSessionDataModelCopyWithImpl<$Res>
    implements $AuthSessionDataModelCopyWith<$Res> {
  _$AuthSessionDataModelCopyWithImpl(this._self, this._then);

  final AuthSessionDataModel _self;
  final $Res Function(AuthSessionDataModel) _then;

/// Create a copy of AuthSessionDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? token = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthSessionUserModel,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AuthSessionDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionUserModelCopyWith<$Res> get user {
  
  return $AuthSessionUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthSessionDataModel].
extension AuthSessionDataModelPatterns on AuthSessionDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSessionDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSessionDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSessionDataModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthSessionDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSessionDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSessionDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthSessionUserModel user,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSessionDataModel() when $default != null:
return $default(_that.user,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthSessionUserModel user,  String token)  $default,) {final _that = this;
switch (_that) {
case _AuthSessionDataModel():
return $default(_that.user,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthSessionUserModel user,  String token)?  $default,) {final _that = this;
switch (_that) {
case _AuthSessionDataModel() when $default != null:
return $default(_that.user,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthSessionDataModel implements AuthSessionDataModel {
  const _AuthSessionDataModel({required this.user, required this.token});
  factory _AuthSessionDataModel.fromJson(Map<String, dynamic> json) => _$AuthSessionDataModelFromJson(json);

@override final  AuthSessionUserModel user;
@override final  String token;

/// Create a copy of AuthSessionDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSessionDataModelCopyWith<_AuthSessionDataModel> get copyWith => __$AuthSessionDataModelCopyWithImpl<_AuthSessionDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthSessionDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSessionDataModel&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString() {
  return 'AuthSessionDataModel(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class _$AuthSessionDataModelCopyWith<$Res> implements $AuthSessionDataModelCopyWith<$Res> {
  factory _$AuthSessionDataModelCopyWith(_AuthSessionDataModel value, $Res Function(_AuthSessionDataModel) _then) = __$AuthSessionDataModelCopyWithImpl;
@override @useResult
$Res call({
 AuthSessionUserModel user, String token
});


@override $AuthSessionUserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthSessionDataModelCopyWithImpl<$Res>
    implements _$AuthSessionDataModelCopyWith<$Res> {
  __$AuthSessionDataModelCopyWithImpl(this._self, this._then);

  final _AuthSessionDataModel _self;
  final $Res Function(_AuthSessionDataModel) _then;

/// Create a copy of AuthSessionDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? token = null,}) {
  return _then(_AuthSessionDataModel(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as AuthSessionUserModel,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthSessionDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionUserModelCopyWith<$Res> get user {
  
  return $AuthSessionUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
