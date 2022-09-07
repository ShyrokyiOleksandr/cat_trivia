// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CatFactRestClient implements CatFactRestClient {
  _CatFactRestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://catfact.ninja/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CatFactRemote> getCatFactRemote() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CatFactRemote>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/fact',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CatFactRemote.fromJson(_result.data!);
    return value;
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
