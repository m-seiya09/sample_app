// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
class _$ArticleTearOff {
  const _$ArticleTearOff();

  _Article call(
      {@JsonKey(name: 'title') String? title = '',
      @JsonKey(name: 'userName') String? userName = '',
      @JsonKey(name: 'userIconUrl') String? userIconUrl = '',
      @JsonKey(name: 'url') String? url = ''}) {
    return _Article(
      title: title,
      userName: userName,
      userIconUrl: userIconUrl,
      url: url,
    );
  }

  Article fromJson(Map<String, Object> json) {
    return Article.fromJson(json);
  }
}

/// @nodoc
const $Article = _$ArticleTearOff();

/// @nodoc
mixin _$Article {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'userName')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'userIconUrl')
  String? get userIconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'userIconUrl') String? userIconUrl,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? userName = freezed,
    Object? userIconUrl = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userIconUrl: userIconUrl == freezed
          ? _value.userIconUrl
          : userIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'userIconUrl') String? userIconUrl,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

  @override
  $Res call({
    Object? title = freezed,
    Object? userName = freezed,
    Object? userIconUrl = freezed,
    Object? url = freezed,
  }) {
    return _then(_Article(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userIconUrl: userIconUrl == freezed
          ? _value.userIconUrl
          : userIconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article implements _Article {
  const _$_Article(
      {@JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'userName') this.userName = '',
      @JsonKey(name: 'userIconUrl') this.userIconUrl = '',
      @JsonKey(name: 'url') this.url = ''});

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticleFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'userName')
  final String? userName;
  @override
  @JsonKey(name: 'userIconUrl')
  final String? userIconUrl;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'Article(title: $title, userName: $userName, userIconUrl: $userIconUrl, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Article &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userIconUrl, userIconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.userIconUrl, userIconUrl)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userIconUrl) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticleToJson(this);
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'userIconUrl') String? userIconUrl,
      @JsonKey(name: 'url') String? url}) = _$_Article;

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'userName')
  String? get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'userIconUrl')
  String? get userIconUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
