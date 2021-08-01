import 'package:chopper/chopper.dart';

import 'package:sample_app/repository/abc/qiita_api.dart';

class ArticleRepository {

  ArticleRepository()
  {
    final chopperClient = ChopperClient(
      baseUrl: ArticleRepository.baseUrl,
      converter: const JsonConverter()
    );

    _client = QiitaApi.create(chopperClient);
  }

  /* ===== プロパティ ===== */
  static const String baseUrl = 'https://qiita.com';
  late QiitaApi _client;


  /* ===== 関数 ===== */

  Future<List> fetchArticleByTitle(String title, int page) async
  {
    /**
     * titleで記事を検索する
     */

    final responce =
      await _client.fetchArticleByTitle(page: page, titleName: title);

    if (responce.isSuccessful) {
      final responceBodyJson = responce.body as List;
      return responceBodyJson;
    } else {

      return <List>[];
    }
  }
}