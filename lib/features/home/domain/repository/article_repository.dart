import 'package:crypto_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

import 'package:crypto_app/features/home/domain/entities/market.dart';

import '../entities/article.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<Article>>> getArticles();
}
