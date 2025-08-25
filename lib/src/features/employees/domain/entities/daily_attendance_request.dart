class DailyAttendanceRequest {
  final String date; // Formato YYYY-MM-DD
  final String? department;
  final String? position;
  final int page;
  final int limit;

  DailyAttendanceRequest({
    required this.date,
    this.department,
    this.position,
    this.page = 1,
    this.limit = 10,
  });

  Map<String, dynamic> toQueryParameters() {
    final params = <String, dynamic>{
      'date': date,
      'page': page.toString(),
      'limit': limit.toString(),
    };

    if (department != null && department!.isNotEmpty) {
      params['department'] = department;
    }

    if (position != null && position!.isNotEmpty) {
      params['position'] = position;
    }

    return params;
  }

  DailyAttendanceRequest copyWith({
    String? date,
    String? department,
    String? position,
    int? page,
    int? limit,
  }) {
    return DailyAttendanceRequest(
      date: date ?? this.date,
      department: department ?? this.department,
      position: position ?? this.position,
      page: page ?? this.page,
      limit: limit ?? this.limit,
    );
  }

  @override
  String toString() {
    return 'DailyAttendanceRequest(date: $date, department: $department, position: $position, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DailyAttendanceRequest &&
        other.date == date &&
        other.department == department &&
        other.position == position &&
        other.page == page &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        department.hashCode ^
        position.hashCode ^
        page.hashCode ^
        limit.hashCode;
  }
}