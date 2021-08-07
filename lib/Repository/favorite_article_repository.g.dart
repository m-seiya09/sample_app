// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_article_repository.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FavoriteArticleData extends DataClass
    implements Insertable<FavoriteArticleData> {
  final String id;
  final String title;
  final String name;
  final String profileImageUrl;
  final String articleUrl;
  FavoriteArticleData(
      {required this.id,
      required this.title,
      required this.name,
      required this.profileImageUrl,
      required this.articleUrl});
  factory FavoriteArticleData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FavoriteArticleData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}article_id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      profileImageUrl: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}profile_image_url'])!,
      articleUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}article_url'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['article_id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['name'] = Variable<String>(name);
    map['profile_image_url'] = Variable<String>(profileImageUrl);
    map['article_url'] = Variable<String>(articleUrl);
    return map;
  }

  FavoriteArticleCompanion toCompanion(bool nullToAbsent) {
    return FavoriteArticleCompanion(
      id: Value(id),
      title: Value(title),
      name: Value(name),
      profileImageUrl: Value(profileImageUrl),
      articleUrl: Value(articleUrl),
    );
  }

  factory FavoriteArticleData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FavoriteArticleData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      name: serializer.fromJson<String>(json['name']),
      profileImageUrl: serializer.fromJson<String>(json['profileImageUrl']),
      articleUrl: serializer.fromJson<String>(json['articleUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'name': serializer.toJson<String>(name),
      'profileImageUrl': serializer.toJson<String>(profileImageUrl),
      'articleUrl': serializer.toJson<String>(articleUrl),
    };
  }

  FavoriteArticleData copyWith(
          {String? id,
          String? title,
          String? name,
          String? profileImageUrl,
          String? articleUrl}) =>
      FavoriteArticleData(
        id: id ?? this.id,
        title: title ?? this.title,
        name: name ?? this.name,
        profileImageUrl: profileImageUrl ?? this.profileImageUrl,
        articleUrl: articleUrl ?? this.articleUrl,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteArticleData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('name: $name, ')
          ..write('profileImageUrl: $profileImageUrl, ')
          ..write('articleUrl: $articleUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(name.hashCode,
              $mrjc(profileImageUrl.hashCode, articleUrl.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteArticleData &&
          other.id == this.id &&
          other.title == this.title &&
          other.name == this.name &&
          other.profileImageUrl == this.profileImageUrl &&
          other.articleUrl == this.articleUrl);
}

class FavoriteArticleCompanion extends UpdateCompanion<FavoriteArticleData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> name;
  final Value<String> profileImageUrl;
  final Value<String> articleUrl;
  const FavoriteArticleCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.name = const Value.absent(),
    this.profileImageUrl = const Value.absent(),
    this.articleUrl = const Value.absent(),
  });
  FavoriteArticleCompanion.insert({
    required String id,
    required String title,
    required String name,
    required String profileImageUrl,
    required String articleUrl,
  })  : id = Value(id),
        title = Value(title),
        name = Value(name),
        profileImageUrl = Value(profileImageUrl),
        articleUrl = Value(articleUrl);
  static Insertable<FavoriteArticleData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? name,
    Expression<String>? profileImageUrl,
    Expression<String>? articleUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'article_id': id,
      if (title != null) 'title': title,
      if (name != null) 'name': name,
      if (profileImageUrl != null) 'profile_image_url': profileImageUrl,
      if (articleUrl != null) 'article_url': articleUrl,
    });
  }

  FavoriteArticleCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String>? name,
      Value<String>? profileImageUrl,
      Value<String>? articleUrl}) {
    return FavoriteArticleCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      name: name ?? this.name,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      articleUrl: articleUrl ?? this.articleUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['article_id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (profileImageUrl.present) {
      map['profile_image_url'] = Variable<String>(profileImageUrl.value);
    }
    if (articleUrl.present) {
      map['article_url'] = Variable<String>(articleUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteArticleCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('name: $name, ')
          ..write('profileImageUrl: $profileImageUrl, ')
          ..write('articleUrl: $articleUrl')
          ..write(')'))
        .toString();
  }
}

class $FavoriteArticleTable extends FavoriteArticle
    with TableInfo<$FavoriteArticleTable, FavoriteArticleData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FavoriteArticleTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'article_id', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 255),
      typeName: 'TEXT',
      requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _profileImageUrlMeta =
      const VerificationMeta('profileImageUrl');
  late final GeneratedColumn<String?> profileImageUrl =
      GeneratedColumn<String?>('profile_image_url', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _articleUrlMeta = const VerificationMeta('articleUrl');
  late final GeneratedColumn<String?> articleUrl = GeneratedColumn<String?>(
      'article_url', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, name, profileImageUrl, articleUrl];
  @override
  String get aliasedName => _alias ?? 'favorite_article';
  @override
  String get actualTableName => 'favorite_article';
  @override
  VerificationContext validateIntegrity(
      Insertable<FavoriteArticleData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('article_id')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['article_id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('profile_image_url')) {
      context.handle(
          _profileImageUrlMeta,
          profileImageUrl.isAcceptableOrUnknown(
              data['profile_image_url']!, _profileImageUrlMeta));
    } else if (isInserting) {
      context.missing(_profileImageUrlMeta);
    }
    if (data.containsKey('article_url')) {
      context.handle(
          _articleUrlMeta,
          articleUrl.isAcceptableOrUnknown(
              data['article_url']!, _articleUrlMeta));
    } else if (isInserting) {
      context.missing(_articleUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteArticleData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FavoriteArticleData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FavoriteArticleTable createAlias(String alias) {
    return $FavoriteArticleTable(_db, alias);
  }
}

abstract class _$FavoriteArticleRepository extends GeneratedDatabase {
  _$FavoriteArticleRepository(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $FavoriteArticleTable favoriteArticle =
      $FavoriteArticleTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favoriteArticle];
}
