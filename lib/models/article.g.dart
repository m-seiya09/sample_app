// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleData _$_$ArticleDataFromJson(Map<String, dynamic> json) {
  return _$ArticleData(
    id: json['id'] as String?,
    title: json['title'] as String?,
    name: json['name'] as String?,
    profileImageUrl: json['profile_image_url'] as String?,
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$_$ArticleDataToJson(_$ArticleData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'name': instance.name,
      'profile_image_url': instance.profileImageUrl,
      'url': instance.url,
    };
