import 'dart:convert';

import 'package:crypto_app/core/error/exceptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/article_model.dart';

abstract class ArticleLocalDataSource {
  ///Gets the cached [ArticleModel] list wich was gotten the last time
  ///the user had an internet connection
  ///
  ///Throws a [CachedException] if no cached data is present.
  Future<List<ArticleModel>> getLastArticles();

  Future<void> cacheArticles(List<ArticleModel> news);
}

const cachedNews = 'CACHED_ARTICLES';

class ArticleLocalDataSourceImpl implements ArticleLocalDataSource {
  final SharedPreferences sharedPreferences;

  ArticleLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheArticles(List<ArticleModel> articles) async {
    final articlesString = <String>[];

    for (var article in articles) {
      articlesString.add(json.encode(article.toJson()));
    }

    await sharedPreferences.setStringList(cachedNews, articlesString);
  }

  @override
  Future<List<ArticleModel>> getLastArticles() async {
    final cachedArticlesString = sharedPreferences.getStringList(cachedNews);

    final lastCachedArticles = <ArticleModel>[];

    if (cachedArticlesString != null) {
      for (var c in cachedArticlesString) {
        lastCachedArticles.add(ArticleModel.fromJson(json.decode(c)));
      }

      return lastCachedArticles;
    } else {
      throw CacheException();
    }
  }
}
