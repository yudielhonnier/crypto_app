part of 'article_bloc.dart';

enum ArticleStatus {
  initial,
  loading,
  listLoaded,
  failure,
}

class ArticleState extends Equatable {
  const ArticleState({required this.articles, required this.status});

  final ArticleStatus status;
  final List<ArticleModel> articles;

  static ArticleState initial() =>
      const ArticleState(articles: [], status: ArticleStatus.initial);

  ArticleState copyWith(
          {List<ArticleModel>? articles, ArticleStatus? status}) =>
      ArticleState(
          articles: articles ?? this.articles, status: status ?? this.status);

  @override
  List<Object?> get props => [articles, status];
}
