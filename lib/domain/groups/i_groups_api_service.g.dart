// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_groups_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _IGroupsApiService implements IGroupsApiService {
  _IGroupsApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://10535ad9-1804-4207-b556-54f9e7572e48.mock.pstmn.io';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<dynamic>> getPrivateGroups() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<HttpResponse<dynamic>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/get_private_groups_v2',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
