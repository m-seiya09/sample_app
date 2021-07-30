import 'package:chopper/chopper.dart';

import 'package:sample_app/Repository/ABC/qiita_api.dart';

class QiitaApiRepository {
  static final String baseUrl = 'https://qiita.com';
  
  QiitaApi _client;

  QiitaApiRepository()
  {
    ChopperClient chopperClient = ChopperClient(
      baseUrl: QiitaApiRepository.baseUrl,
      converter: JsonConverter()
    );
    this._client = QiitaApi.create(chopperClient);
  }

  Future<Map> fetchArticleByTitle(String title) async
  {
    /**
     * titleで記事を検索する
     */

    final Response<dynamic> responce = await this._client.fetchArticleByTitle(titleName: title);

    if (responce.isSuccessful) {
      final responceBodyJson = responce.body as Map<int, dynamic>;

      return responceBodyJson;
    } else {
      return {};
    }
  }
}