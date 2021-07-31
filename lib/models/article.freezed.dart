// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleTearOff {
  const _$ArticleTearOff();

Article call({ String* name = '',  int* age = 0}) {
  return  Article(name:name,age:age,);
}

}

/// @nodoc
const $Article = _$ArticleTearOff();

/// @nodoc
mixin _$Article {

 String* get name => throw _privateConstructorUsedError; int* get age => throw _privateConstructorUsedError;






@JsonKey(ignore: true)
$ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ArticleCopyWith<$Res>  {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) = _$ArticleCopyWithImpl<$Res>;
$Res call({
 String* name, int* age
});



}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

@override $Res call({Object? name = freezed,Object? age = freezed,}) {
  return _then(_value.copyWith(
name: name == freezed ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String*,age: age == freezed ? _value.age : age // ignore: cast_nullable_to_non_nullable
as int*,
  ));
}

}


/// @nodoc
abstract class $ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) = _$ArticleCopyWithImpl<$Res>;
@override $Res call({
 String* name, int* age
});



}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(Article _value, $Res Function(Article) _then)
      : super(_value, (v) => _then(v as Article));

@override
Article get _value => super._value as Article;

@override $Res call({Object? name = freezed,Object? age = freezed,}) {
  return _then(Article(
name: name == freezed ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String*,age: age == freezed ? _value.age : age // ignore: cast_nullable_to_non_nullable
as int*,
  ));
}


}

/// @nodoc


class _$Article  with DiagnosticableTreeMixin implements Article {
  const _$Article({this.name = '', this.age = 0});

  

@JsonKey(defaultValue: '') @override  final String* name;@JsonKey(defaultValue: 0) @override  final int* age;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Article(name: $name, age: $age)';
}

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  super.debugFillProperties(properties);
  properties
    ..add(DiagnosticsProperty('type', 'Article'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('age', age));
}

@override
bool operator ==(dynamic other) {
  return identical(this, other) || (other is Article&&(identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name))&&(identical(other.age, age) || const DeepCollectionEquality().equals(other.age, age)));
}

@override
int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(name)^ const DeepCollectionEquality().hash(age);

@JsonKey(ignore: true)
@override
$ArticleCopyWith<Article> get copyWith => _$ArticleCopyWithImpl<Article>(this, _$identity);






}


abstract class Article implements Article {
  const factory Article({ String* name,  int* age}) = _$Article;
  

  

@override  String* get name => throw _privateConstructorUsedError;@override  int* get age => throw _privateConstructorUsedError;
@override @JsonKey(ignore: true)
$ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;

}
