import 'package:retrofit/retrofit.dart';

extension HttpResponseX<T> on HttpResponse<T> {
  int get statusCode => response.statusCode ?? -1;

  bool get isSuccessful {
    return statusCode >= 200 && statusCode <= 299;
  }

  T? get body {
    return response.data;
  }

  String get error {
    return response.data;
  }
}
