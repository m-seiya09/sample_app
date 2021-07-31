// user.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'article.freezed.dart';

@freezed
abstract class Article with _$Article {
 const factory Article({@Default('') String name, @Default(0) int age}) = Article;
}