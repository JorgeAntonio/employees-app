import 'package:attendance_app/src/core/entities/pagination_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response_model.freezed.dart';
part 'pagination_response_model.g.dart';

@freezed
abstract class PaginationResponseModel with _$PaginationResponseModel {
  const factory PaginationResponseModel({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _PaginationResponseModel;

  factory PaginationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseModelFromJson(json);
}

extension PaginationResponseModelX on PaginationResponseModel {
  PaginationResponse toDomain() {
    return PaginationResponse(
      page: page,
      limit: limit,
      total: total,
      totalPages: totalPages,
    );
  }
}
