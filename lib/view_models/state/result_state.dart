import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sample_app/models/article.dart';

part 'result_state.freezed.dart';

@freezed
abstract class ResultState with _$ResultState {

  const factory ResultState({
    @Default(1) int currentPage,
    @Default(<ArticleData>[]) List<ArticleData> articles,
  }) = ResultStateData;

}