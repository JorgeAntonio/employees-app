class EmployeesRequest {
  final int page;
  final int limit;
  final String? search; // Para búsqueda opcional
  final String? department; // Para filtrar por departamento
  final String? position; // Para filtrar por posición

  EmployeesRequest({
    this.page = 1,
    this.limit = 10,
    this.search,
    this.department,
    this.position,
  });

  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {
      'page': page.toString(),
      'limit': limit.toString(),
    };

    if (search != null && search!.isNotEmpty) {
      params['search'] = search!;
    }

    if (department != null && department!.isNotEmpty) {
      params['department'] = department!;
    }

    if (position != null && position!.isNotEmpty) {
      params['position'] = position!;
    }

    return params;
  }

  EmployeesRequest copyWith({
    int? page,
    int? limit,
    String? search,
    String? department,
    String? position,
  }) {
    return EmployeesRequest(
      page: page ?? this.page,
      limit: limit ?? this.limit,
      search: search ?? this.search,
      department: department ?? this.department,
      position: position ?? this.position,
    );
  }

  @override
  String toString() {
    return 'EmployeesRequest(page: $page, limit: $limit, search: $search, department: $department, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EmployeesRequest &&
        other.page == page &&
        other.limit == limit &&
        other.search == search &&
        other.department == department &&
        other.position == position;
  }

  @override
  int get hashCode {
    return page.hashCode ^
        limit.hashCode ^
        search.hashCode ^
        department.hashCode ^
        position.hashCode;
  }
}