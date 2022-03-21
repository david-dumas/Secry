class GeneralPaginationInfo {
  /// Starts at 1 (not at zero)
  final int pageNumber;
  final int totalPages;
  final int totalCount;
  final bool hasPreviousPage;
  final bool hasNextPage;

  GeneralPaginationInfo(
      {required this.pageNumber,
      required this.totalPages,
      required this.totalCount,
      required this.hasPreviousPage,
      required this.hasNextPage});

  factory GeneralPaginationInfo.fromJsonMap(Map<String, dynamic> json) {
    return GeneralPaginationInfo(
        pageNumber: json.containsKey('pageNumber') ? (json['pageNumber'] != null ? json['pageNumber'] : 1) : 1,
        totalPages: json.containsKey('totalPages') ? (json['totalPages'] != null ? json['totalPages'] : 1) : 1,
        totalCount:
            json.containsKey('totalCount') ? (json['totalCount'] != null ? json['totalCount'] : 0) : 0,
        hasPreviousPage: json.containsKey('hasPreviousPage')
            ? (json['hasPreviousPage'] != null ? json['hasPreviousPage'] : false)
            : false,
        hasNextPage:
            json.containsKey('hasNextPage') ? (json['hasNextPage'] != null ? json['hasNextPage'] : false) : false);
  }
}
