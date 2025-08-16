// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImportResponseModel _$ImportResponseModelFromJson(Map<String, dynamic> json) =>
    _ImportResponseModel(
      success: json['success'] as bool,
      message: json['message'] as String,
      importedCount: (json['importedCount'] as num?)?.toInt() ?? 0,
      errors:
          (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ImportResponseModelToJson(
  _ImportResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'importedCount': instance.importedCount,
  'errors': instance.errors,
};
