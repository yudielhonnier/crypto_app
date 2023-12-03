// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleModel _$$_ArticleModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleModel(
      articleId: json['article_id'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      creator:
          (json['creator'] as List<dynamic>?)?.map((e) => e as String).toList(),
      videoUrl: json['video_url'] as String?,
      description: json['description'] as String,
      content: json['content'] as String,
      pubDate: json['pubDate'] as String,
      imageUrl: json['image_Url'] as String?,
      sourceId: json['source_id'] as String,
      sourcePriority: json['source_priority'] as int,
      country:
          (json['country'] as List<dynamic>).map((e) => e as String).toList(),
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
      language: json['language'] as String,
    );

Map<String, dynamic> _$$_ArticleModelToJson(_$_ArticleModel instance) =>
    <String, dynamic>{
      'article_id': instance.articleId,
      'title': instance.title,
      'link': instance.link,
      'keywords': instance.keywords,
      'creator': instance.creator,
      'video_url': instance.videoUrl,
      'description': instance.description,
      'content': instance.content,
      'pubDate': instance.pubDate,
      'image_Url': instance.imageUrl,
      'source_id': instance.sourceId,
      'source_priority': instance.sourcePriority,
      'country': instance.country,
      'category': instance.category,
      'language': instance.language,
    };

_$_ArticleResponse _$$_ArticleResponseFromJson(Map<String, dynamic> json) =>
    _$_ArticleResponse(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArticleResponseToJson(_$_ArticleResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'results': instance.results,
    };
