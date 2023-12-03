import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/network/network_info.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/repository/article_repository.dart';
import '../data_sources/local/article_local_data_source.dart';
import '../data_sources/remote/article_remote_data_source.dart';
import '../models/article_model.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleRemoteDataSource remoteDataSource;
  final ArticleLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  ArticleRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<ArticleModel>>> getArticles() async {
    bool result = await networkInfo.isConnected;

    if (await networkInfo.isConnected) {
      try {
        final remote = await remoteDataSource.getArticles();
        final remoteArticles = remote.results;
        localDataSource.cacheArticles(remoteArticles);
        return Right(remoteArticles);
      } on ServerException catch (e) {
        return Left(ApiRequestError(error: e));
      }
    } else {
      try {
        final localNews = await localDataSource.getLastArticles();
        Right(localNews);
      } on CacheException catch (e) {
        return Left(DbError(error: e));
      }
    }
    return Left(UnknowFailure());
  }
}
