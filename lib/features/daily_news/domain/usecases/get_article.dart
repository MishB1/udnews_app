import 'package:dio/dio.dart';
import 'package:udnews_app/core/resources/data_state.dart';
import 'package:udnews_app/features/daily_news/domain/entities/article.dart';
import 'package:udnews_app/features/daily_news/domain/repository/article_repository.dart';
import 'package:udnews_app/features/daily_news/presentation/bloc/article/remote/remote_artice_state.dart';
import '../../../../core/usecase/usecase.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>,void> {

  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
   return _articleRepository.getNewsArticles();
  }

}

class RemoteArticlesLoading extends RemoteArticleState {
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticleState {
  const RemoteArticlesDone(List<ArticleEntity> article) :super(articles: article);
}

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioException error) :super(error: error);
}