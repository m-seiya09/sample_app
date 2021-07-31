// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$_$_ArticleFromJson(Map<String, dynamic> json) {
  return _$_Article(
    title: json['title'] as String?,
    userName: json['userName'] as String?,
    userIconUrl: json['userIconUrl'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$_$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'title': instance.title,
      'userName': instance.userName,
      'userIconUrl': instance.userIconUrl,
      'url': instance.url,
    };
