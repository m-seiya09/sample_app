import 'package:chopper/chopper.dart';

part 'qiita_api.chopper.dart';

@ChopperApi(baseUrl: "/api/v2")
abstract class QiitaApi extends ChopperService {

  static QiitaApi create([ChopperClient? client]) 
  => _$QiitaApi(client);

  @Get(path: '/items?page={page}&query=title:{titleName}')
  Future<Response> fetchArticleByTitle({
    @Path('page') int page = 1,
    @Path('titleName') String? titleName,
  });
}