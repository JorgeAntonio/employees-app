import 'package:freezed_annotation/freezed_annotation.dart';

part 'import_response_entity.freezed.dart';

@freezed
abstract class ImportResponseEntity with _$ImportResponseEntity {
  const factory ImportResponseEntity({
    required bool success,
    required String message,
    required int importedCount,
    required List<String> errors,
  }) = _ImportResponseEntity;
}