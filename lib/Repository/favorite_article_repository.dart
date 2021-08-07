import 'dart:io';

import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'package:sample_app/models/article.dart';
import 'package:sample_app/models/favorite_article.dart';

part 'favorite_article_repository.g.dart';


@UseMoor(tables: [FavoriteArticle])
class FavoriteArticleRepository extends _$FavoriteArticleRepository {

  FavoriteArticleRepository(): super(LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  }));

  @override
  int get schemaVersion => 1;

  // 全てのデータを取得する
  Future<List<FavoriteArticleData>> all()
  {
    return select(favoriteArticle).get();
  }

  // Stream で取得
  Stream<List> allByStream()
  {
    return select(favoriteArticle).watch();
  }

  // データ作成
  Future<void> addFavorite(Article article)
  {
    final createData = FavoriteArticleData(
      id: article.id ?? '',
      title: article.title ?? '',
      name: article.name ?? '',
      profileImageUrl: article.profileImageUrl ?? '',
      articleUrl: article.url ?? ''
    );
    return into(favoriteArticle).insert(createData);
  }

  Future<void> delteFavorite(String id)
  {
    return (delete(favoriteArticle)..where((item) => item.id.equals(id))).go();
  }
}