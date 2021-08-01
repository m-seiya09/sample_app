import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sample_app/models/article.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {

  const factory FavoriteState({
    @Default(<String>[]) List<String> ids,
    @Default(<ArticleData>[]) List<ArticleData> articles,
  }) = FavoriteStateData;
}