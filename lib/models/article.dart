import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class Article with _$Article {

  const factory Article({
    @Default('') @JsonKey(name: 'title') String? title,
    @Default('') @JsonKey(name: 'userName') String? userName,
    @Default('') @JsonKey(name: 'userIconUrl') String? userIconUrl,
    @Default('') @JsonKey(name: 'url') String? url,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}