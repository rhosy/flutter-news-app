// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      title: json['title'] as String,
      url: json['url'] as String,
      author: json['author'] as String,
      publishedAt: json['publishedAt'] as String,
      urlToImage: json['urlToImage'] as String?,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'author': instance.author,
      'publishedAt': instance.publishedAt,
      'urlToImage': instance.urlToImage,
    };
