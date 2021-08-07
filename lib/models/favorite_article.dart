import 'package:moor/moor.dart';

class FavoriteArticle extends Table {
  TextColumn get id => text().withLength(max: 255).named('article_id')();
  TextColumn get title => text()();
  TextColumn get name => text()();
  TextColumn get profileImageUrl => text().named('profile_image_url')();
  TextColumn get articleUrl => text().named('article_url')();
  
  @override
  Set<Column> get primaryKey => {id};
}