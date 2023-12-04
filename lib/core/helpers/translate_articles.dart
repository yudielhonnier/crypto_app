import 'dart:convert';

import 'package:crypto_app/core/helpers/extensions.dart';

import '../../features/home/data/models/article_model.dart';

List<ArticleModel> translateArticles(List<ArticleModel> list) {
  return list.map((element) {
    String toReturn = '';
    if (element.title.isEnglish()) {
      return element;
    } else {
      element.toString().translate().then((value) => toReturn = value);
    }
    return toReturn.isNotEmpty
        ? ArticleModel.fromJson(const JsonDecoder().convert(toReturn))
        : element;
  }).toList();
}
