import 'package:udnews_app/core/resources/data_state.dart';
import 'package:udnews_app/features/daily_news/data/models/article.dart';
import 'package:udnews_app/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleReposity {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}