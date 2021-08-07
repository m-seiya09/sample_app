import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sample_app/repository/favorite_article_repository.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {

  const factory FavoriteState({
    @Default(<String>[]) List<String> ids,
    @Default(<FavoriteArticleData>[]) List<FavoriteArticleData> articles,
  }) = FavoriteStateData;
}