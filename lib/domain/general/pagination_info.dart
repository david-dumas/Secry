import 'package:secry/constants.dart';

class PaginationInfo {
  /// Starts at 1 (not at zero)
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final int totalCount;
  final bool hasPreviousPage;
  final bool hasNextPage;

  PaginationInfo(
      {required this.pageNumber,
      this.pageSize = defaultPageSize,
      required this.totalPages,
      required this.totalCount,
      required this.hasPreviousPage,
      required this.hasNextPage});

  factory PaginationInfo.fromJsonMap(Map<String, dynamic> json) {
    return PaginationInfo(
        pageNumber: json.containsKey('pageNumber') ? (json['pageNumber'] != null ? json['pageNumber'] : 1) : 1,
        pageSize: defaultPageSize,
        totalPages: json.containsKey('totalPages') ? (json['totalPages'] != null ? json['totalPages'] : 1) : 1,
        totalCount: json.containsKey('totalCount') ? (json['totalCount'] != null ? json['totalCount'] : 0) : 0,
        hasPreviousPage: json.containsKey('hasPreviousPage')
            ? (json['hasPreviousPage'] != null ? json['hasPreviousPage'] : false)
            : false,
        hasNextPage:
            json.containsKey('hasNextPage') ? (json['hasNextPage'] != null ? json['hasNextPage'] : false) : false);
  }
}
