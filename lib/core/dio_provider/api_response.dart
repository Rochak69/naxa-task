import 'package:project_init/core/dio_provider/api_error.dart';

class ApiResponse<T> {
  const ApiResponse({this.message, this.data});

  final String? message;

  final T? data;
}

class ApiResponseForList<T> {
  ApiResponseForList({this.data, this.paginationInfo});

  ApiResponseForList.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <T>[]; // Initialize the list with the correct type T
      json['data'].forEach((dynamic v) {
        data!.add(v as T); // Typecast v as T and add it to the list
      });
    }
    paginationInfo = PaginationInfo.fromResponse(json);
  }
  List<T>? data;
  PaginationInfo? paginationInfo;

  ApiResponseForList<T> copyWith({
    List<T>? data,
  }) {
    return ApiResponseForList<T>(
      data: data ?? this.data,
    );
  }
}

class ApiErrorResponse extends AppError {
  ApiErrorResponse({super.message});
}

class PaginationInfo {
  PaginationInfo({
    this.currentPage,
    this.total,
  });

  factory PaginationInfo.fromResponse(Map<String, dynamic> response) {
    return PaginationInfo(
      currentPage: response['current_page'],
      total: response['total'],
    );
  }
  final int? currentPage;

  final int? total;

  PaginationInfo copyWith({
    int? currentPage,
    int? total,
  }) {
    return PaginationInfo(
      currentPage: currentPage ?? this.currentPage,
      total: total ?? this.total,
    );
  }
}
