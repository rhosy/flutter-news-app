// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String title,
      String url,
      String author,
      String publishedAt,
      String? urlToImage});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? author = null,
    Object? publishedAt = null,
    Object? urlToImage = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String url,
      String author,
      String publishedAt,
      String? urlToImage});
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? author = null,
    Object? publishedAt = null,
    Object? urlToImage = freezed,
  }) {
    return _then(_$ArticleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  const _$ArticleImpl(
      {required this.title,
      required this.url,
      required this.author,
      required this.publishedAt,
      this.urlToImage});

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  final String title;
  @override
  final String url;
  @override
  final String author;
  @override
  final String publishedAt;
  @override
  final String? urlToImage;

  @override
  String toString() {
    return 'Article(title: $title, url: $url, author: $author, publishedAt: $publishedAt, urlToImage: $urlToImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, url, author, publishedAt, urlToImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {required final String title,
      required final String url,
      required final String author,
      required final String publishedAt,
      final String? urlToImage}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  String get title;
  @override
  String get url;
  @override
  String get author;
  @override
  String get publishedAt;
  @override
  String? get urlToImage;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
