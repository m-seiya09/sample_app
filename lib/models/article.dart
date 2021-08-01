import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class Article with _$Article {

  const factory Article({
    @JsonKey(name: 'id') String? id,
    @Default('') @JsonKey(name: 'title') String? title,
    @Default('') @JsonKey(name: 'name') String? name,
    @Default('') @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @Default('') @JsonKey(name: 'url') String? url,
  }) = ArticleData;

  factory Article.fromJson(Map<String, dynamic> json) 
    => _$ArticleFromJson(json);
}