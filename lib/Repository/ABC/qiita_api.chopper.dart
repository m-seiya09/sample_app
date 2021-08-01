// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$QiitaApi extends QiitaApi {
  _$QiitaApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = QiitaApi;

  @override
  Future<Response<dynamic>> fetchArticleByTitle(
      {int page = 1, String? titleName}) {
    final $url = '/api/v2/items?page=$page&query=title:$titleName';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
