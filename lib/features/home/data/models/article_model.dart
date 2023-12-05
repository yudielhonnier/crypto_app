import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/article.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
class ArticleModel extends Article with _$ArticleModel {
  const factory ArticleModel({
    @JsonKey(name: 'article_id') required String articleId,
    required String title,
    required String link,
    required List<String>? keywords,
    required List<String>? creator,
    @JsonKey(name: 'video_url') String? videoUrl,
    required String? description,
    required String content,
    required DateTime pubDate,
    @JsonKey(name: 'image_Url') String? imageUrl,
    @JsonKey(name: 'source_id') required String sourceId,
    @JsonKey(name: 'source_priority') required int sourcePriority,
    required List<String> country,
    required List<String> category,
    required String language,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

@freezed
class ArticleResponse with _$ArticleResponse {
  const factory ArticleResponse(
      {required String status,
      required int totalResults,
      required List<ArticleModel> results}) = _ArticleResponse;

  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);
}
