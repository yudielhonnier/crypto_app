import 'package:crypto_app/features/home/data/models/article_model.dart';
import 'package:crypto_app/features/home/data/models/market_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'article_remote_data_source.g.dart';

abstract class ArticleRemoteDataSource {
  ///Calls the http://newsdata.io/api/1/news?apikey=pub_309479cbdc7f02ed6b9bda235cba7805c4a07&q=crypto   endpoint
  ///
  ///Throws a [ServerException] for all the error codes
  Future<ArticleResponse> getArticles();
}

@RestApi(baseUrl: 'http://newsdata.io/api/1/')
abstract class ArticleRemoteDataSourceImpl implements ArticleRemoteDataSource {
  factory ArticleRemoteDataSourceImpl(Dio dio, {String baseUrl}) =
      _ArticleRemoteDataSourceImpl;

  //TODO: ADD APIKEY
  @GET('/news?apikey=pub_309479cbdc7f02ed6b9bda235cba7805c4a07&q=crypto')
  @override
  Future<ArticleResponse> getArticles();
}
