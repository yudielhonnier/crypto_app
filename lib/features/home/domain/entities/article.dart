class Article {
  final String articleId;
  final String title;
  final String link;
  final List<String>? keywords;
  final List<String>? creator;
  final String? videoUrl;
  final String description;
  final String content;
  final String pubDate;
  final String? imageUrl;
  final String sourceId;
  final int sourcePriority;
  final List<String> country;
  final List<String> category;
  final String language;

  Article({
    required this.articleId,
    required this.title,
    required this.link,
    this.keywords,
    this.creator,
    this.videoUrl,
    required this.description,
    required this.content,
    required this.pubDate,
    this.imageUrl,
    required this.sourceId,
    required this.sourcePriority,
    required this.country,
    required this.category,
    required this.language,
  });
}
