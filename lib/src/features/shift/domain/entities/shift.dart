class Shift {
  final String id;
  final String name;
  final String description;
  final String startTime;
  final String endTime;
  final int employeeCount;

  const Shift({
    required this.id,
    required this.name,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.employeeCount,
  });
}

class ShiftPagination {
  final int page;
  final int limit;
  final int total;
  final int totalPages;

  const ShiftPagination({
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
  });
}

class ShiftResponse {
  final bool success;
  final ShiftData data;

  const ShiftResponse({required this.success, required this.data});
}

class ShiftData {
  final List<Shift> shifts;
  final ShiftPagination pagination;

  const ShiftData({required this.shifts, required this.pagination});
}
