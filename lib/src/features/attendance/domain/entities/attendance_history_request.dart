class AttendanceHistoryRequest {
  final int page;
  final int limit;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? employeeId; // For admin requests

  AttendanceHistoryRequest({
    this.page = 1,
    this.limit = 10,
    this.startDate,
    this.endDate,
    this.employeeId,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {
      'page': page.toString(),
      'limit': limit.toString(),
    };

    if (startDate != null) {
      params['startDate'] = startDate!.toIso8601String().split('T')[0];
    }

    if (endDate != null) {
      params['endDate'] = endDate!.toIso8601String().split('T')[0];
    }

    return params;
  }

  AttendanceHistoryRequest copyWith({
    int? page,
    int? limit,
    DateTime? startDate,
    DateTime? endDate,
    String? employeeId,
  }) {
    return AttendanceHistoryRequest(
      page: page ?? this.page,
      limit: limit ?? this.limit,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      employeeId: employeeId ?? this.employeeId,
    );
  }

  @override
  String toString() {
    return 'AttendanceHistoryRequest(page: $page, limit: $limit, startDate: $startDate, endDate: $endDate, employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AttendanceHistoryRequest &&
        other.page == page &&
        other.limit == limit &&
        other.startDate == startDate &&
        other.endDate == endDate &&
        other.employeeId == employeeId;
  }

  @override
  int get hashCode {
    return page.hashCode ^
        limit.hashCode ^
        startDate.hashCode ^
        endDate.hashCode ^
        employeeId.hashCode;
  }
}