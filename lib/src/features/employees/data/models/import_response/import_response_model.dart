import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/import_response_entity.dart';

part 'import_response_model.freezed.dart';
part 'import_response_model.g.dart';

@freezed
abstract class ImportResponseModel with _$ImportResponseModel {
  const factory ImportResponseModel({
    required bool success,
    required String message,
    @Default(0) int importedCount,
    @Default([]) List<String> errors,
  }) = _ImportResponseModel;

  factory ImportResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImportResponseModelFromJson(json);
}

extension ImportResponseModelX on ImportResponseModel {
  ImportResponseEntity toDomain() {
    return ImportResponseEntity(
      success: success,
      message: message,
      importedCount: importedCount,
      errors: errors,
    );
  }
}