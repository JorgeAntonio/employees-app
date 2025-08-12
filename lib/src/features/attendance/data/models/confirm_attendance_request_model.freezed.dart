// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_attendance_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConfirmAttendanceRequestModel {

 String get code; bool? get confirmed; String? get locationId; double? get latitude; double? get longitude; double? get accuracy; String? get name; DeviceInfoModel? get deviceInfo;
/// Create a copy of ConfirmAttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmAttendanceRequestModelCopyWith<ConfirmAttendanceRequestModel> get copyWith => _$ConfirmAttendanceRequestModelCopyWithImpl<ConfirmAttendanceRequestModel>(this as ConfirmAttendanceRequestModel, _$identity);

  /// Serializes this ConfirmAttendanceRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmAttendanceRequestModel&&(identical(other.code, code) || other.code == code)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.name, name) || other.name == name)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,confirmed,locationId,latitude,longitude,accuracy,name,deviceInfo);

@override
String toString() {
  return 'ConfirmAttendanceRequestModel(code: $code, confirmed: $confirmed, locationId: $locationId, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, name: $name, deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class $ConfirmAttendanceRequestModelCopyWith<$Res>  {
  factory $ConfirmAttendanceRequestModelCopyWith(ConfirmAttendanceRequestModel value, $Res Function(ConfirmAttendanceRequestModel) _then) = _$ConfirmAttendanceRequestModelCopyWithImpl;
@useResult
$Res call({
 String code, bool? confirmed, String? locationId, double? latitude, double? longitude, double? accuracy, String? name, DeviceInfoModel? deviceInfo
});


$DeviceInfoModelCopyWith<$Res>? get deviceInfo;

}
/// @nodoc
class _$ConfirmAttendanceRequestModelCopyWithImpl<$Res>
    implements $ConfirmAttendanceRequestModelCopyWith<$Res> {
  _$ConfirmAttendanceRequestModelCopyWithImpl(this._self, this._then);

  final ConfirmAttendanceRequestModel _self;
  final $Res Function(ConfirmAttendanceRequestModel) _then;

/// Create a copy of ConfirmAttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? confirmed = freezed,Object? locationId = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? name = freezed,Object? deviceInfo = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as DeviceInfoModel?,
  ));
}
/// Create a copy of ConfirmAttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceInfoModelCopyWith<$Res>? get deviceInfo {
    if (_self.deviceInfo == null) {
    return null;
  }

  return $DeviceInfoModelCopyWith<$Res>(_self.deviceInfo!, (value) {
    return _then(_self.copyWith(deviceInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConfirmAttendanceRequestModel].
extension ConfirmAttendanceRequestModelPatterns on ConfirmAttendanceRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfirmAttendanceRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmAttendanceRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfirmAttendanceRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ConfirmAttendanceRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfirmAttendanceRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConfirmAttendanceRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  bool? confirmed,  String? locationId,  double? latitude,  double? longitude,  double? accuracy,  String? name,  DeviceInfoModel? deviceInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmAttendanceRequestModel() when $default != null:
return $default(_that.code,_that.confirmed,_that.locationId,_that.latitude,_that.longitude,_that.accuracy,_that.name,_that.deviceInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  bool? confirmed,  String? locationId,  double? latitude,  double? longitude,  double? accuracy,  String? name,  DeviceInfoModel? deviceInfo)  $default,) {final _that = this;
switch (_that) {
case _ConfirmAttendanceRequestModel():
return $default(_that.code,_that.confirmed,_that.locationId,_that.latitude,_that.longitude,_that.accuracy,_that.name,_that.deviceInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  bool? confirmed,  String? locationId,  double? latitude,  double? longitude,  double? accuracy,  String? name,  DeviceInfoModel? deviceInfo)?  $default,) {final _that = this;
switch (_that) {
case _ConfirmAttendanceRequestModel() when $default != null:
return $default(_that.code,_that.confirmed,_that.locationId,_that.latitude,_that.longitude,_that.accuracy,_that.name,_that.deviceInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConfirmAttendanceRequestModel implements ConfirmAttendanceRequestModel {
  const _ConfirmAttendanceRequestModel({required this.code, this.confirmed, this.locationId, this.latitude, this.longitude, this.accuracy, this.name, this.deviceInfo});
  factory _ConfirmAttendanceRequestModel.fromJson(Map<String, dynamic> json) => _$ConfirmAttendanceRequestModelFromJson(json);

@override final  String code;
@override final  bool? confirmed;
@override final  String? locationId;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;
@override final  String? name;
@override final  DeviceInfoModel? deviceInfo;

/// Create a copy of ConfirmAttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmAttendanceRequestModelCopyWith<_ConfirmAttendanceRequestModel> get copyWith => __$ConfirmAttendanceRequestModelCopyWithImpl<_ConfirmAttendanceRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfirmAttendanceRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmAttendanceRequestModel&&(identical(other.code, code) || other.code == code)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.name, name) || other.name == name)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,confirmed,locationId,latitude,longitude,accuracy,name,deviceInfo);

@override
String toString() {
  return 'ConfirmAttendanceRequestModel(code: $code, confirmed: $confirmed, locationId: $locationId, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, name: $name, deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class _$ConfirmAttendanceRequestModelCopyWith<$Res> implements $ConfirmAttendanceRequestModelCopyWith<$Res> {
  factory _$ConfirmAttendanceRequestModelCopyWith(_ConfirmAttendanceRequestModel value, $Res Function(_ConfirmAttendanceRequestModel) _then) = __$ConfirmAttendanceRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String code, bool? confirmed, String? locationId, double? latitude, double? longitude, double? accuracy, String? name, DeviceInfoModel? deviceInfo
});


@override $DeviceInfoModelCopyWith<$Res>? get deviceInfo;

}
/// @nodoc
class __$ConfirmAttendanceRequestModelCopyWithImpl<$Res>
    implements _$ConfirmAttendanceRequestModelCopyWith<$Res> {
  __$ConfirmAttendanceRequestModelCopyWithImpl(this._self, this._then);

  final _ConfirmAttendanceRequestModel _self;
  final $Res Function(_ConfirmAttendanceRequestModel) _then;

/// Create a copy of ConfirmAttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? confirmed = freezed,Object? locationId = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? name = freezed,Object? deviceInfo = freezed,}) {
  return _then(_ConfirmAttendanceRequestModel(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as DeviceInfoModel?,
  ));
}

/// Create a copy of ConfirmAttendanceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceInfoModelCopyWith<$Res>? get deviceInfo {
    if (_self.deviceInfo == null) {
    return null;
  }

  return $DeviceInfoModelCopyWith<$Res>(_self.deviceInfo!, (value) {
    return _then(_self.copyWith(deviceInfo: value));
  });
}
}


/// @nodoc
mixin _$DeviceInfoModel {

 String get name; String get os; String get browser; String get userAgent;
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
 String name, String os, String browser, String userAgent
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? os = null,Object? browser = null,Object? userAgent = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,os: null == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String,browser: null == browser ? _self.browser : browser // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String os,  String browser,  String userAgent)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String os,  String browser,  String userAgent)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String os,  String browser,  String userAgent)?  $default,) {final _that = this;
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
  const _DeviceInfoModel({required this.name, required this.os, required this.browser, required this.userAgent});
  factory _DeviceInfoModel.fromJson(Map<String, dynamic> json) => _$DeviceInfoModelFromJson(json);

@override final  String name;
@override final  String os;
@override final  String browser;
@override final  String userAgent;

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
 String name, String os, String browser, String userAgent
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? os = null,Object? browser = null,Object? userAgent = null,}) {
  return _then(_DeviceInfoModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,os: null == os ? _self.os : os // ignore: cast_nullable_to_non_nullable
as String,browser: null == browser ? _self.browser : browser // ignore: cast_nullable_to_non_nullable
as String,userAgent: null == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
