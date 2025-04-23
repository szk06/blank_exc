class ApiResponse<T> {
  final bool hasMore;
  final List<T>? data;

  ApiResponse({this.hasMore = false, required this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic>) fromJson, String key) {
    return ApiResponse(
      hasMore: json['has_more'] ?? false,
      data: json[key] != null
          ? (json[key] as List<dynamic>)
              .map((e) => fromJson(e as Map<String, dynamic>))
              .toList()
          : [],
    );
  }
}
