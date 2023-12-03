import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/core/usecases/usecase.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/article.dart';
import '../repository/article_repository.dart';

class GetAllArticlesUseCase implements Usecase<List<Article>, NoParams> {
  final ArticleRepository articleRepository;

  GetAllArticlesUseCase(this.articleRepository);

  @override
  Future<Either<Failure, List<Article>>> call(noParams) =>
      articleRepository.getArticles();
}
