import 'package:attendance_app/src/features/shift/domain/entities/shift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_response_model.freezed.dart';
part 'shift_response_model.g.dart';

@freezed
abstract class ShiftResponseModel with _$ShiftResponseModel {
  const factory ShiftResponseModel({
    required bool success,
    ShiftDataModel? data,
    String? message,
  }) = _ShiftResponseModel;

  factory ShiftResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftResponseModelFromJson(json);
}

@freezed
abstract class ShiftDataModel with _$ShiftDataModel {
  const factory ShiftDataModel({
    required List<ShiftModel> shifts,
    required PaginationInfoModel pagination,
  }) = _ShiftDataModel;

  factory ShiftDataModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftDataModelFromJson(json);
}

@freezed
abstract class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    required String id,
    required String name,
    required String description,
    required DateTime startTime,
    required DateTime endTime,
    required int employeeCount,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);
}

@freezed
abstract class PaginationInfoModel with _$PaginationInfoModel {
  const factory PaginationInfoModel({
    required int page,
    required int limit,
    required int total,
    required int totalPages,
  }) = _PaginationInfoModel;

  factory PaginationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoModelFromJson(json);
}

// Extension methods to convert between domain entities and data models
extension ShiftResponseModelX on ShiftResponseModel {
  ShiftResponse toDomain() {
    return ShiftResponse(
      success: success,
      data:
          data?.toDomain() ??
          const ShiftData(
            shifts: [],
            pagination: ShiftPagination(
              page: 1,
              limit: 10,
              total: 0,
              totalPages: 0,
            ),
          ),
    );
  }
}

extension ShiftDataModelX on ShiftDataModel {
  ShiftData toDomain() {
    return ShiftData(
      shifts: shifts.map((shift) => shift.toDomain()).toList(),
      pagination: pagination.toDomain(),
    );
  }
}

extension ShiftModelX on ShiftModel {
  Shift toDomain() {
    return Shift(
      id: id,
      name: name,
      description: description,
      startTime: startTime,
      endTime: endTime,
      employeeCount: employeeCount,
    );
  }
}

extension PaginationInfoModelX on PaginationInfoModel {
  ShiftPagination toDomain() {
    return ShiftPagination(
      page: page,
      limit: limit,
      total: total,
      totalPages: totalPages,
    );
  }
}
