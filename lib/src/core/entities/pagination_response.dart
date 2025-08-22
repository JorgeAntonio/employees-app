class PaginationResponse {
  final int page;
  final int limit;
  final int total;
  final int totalPages;

  PaginationResponse({
    required this.page,
    required this.limit,
    required this.total,
    required this.totalPages,
  });
}
