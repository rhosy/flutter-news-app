import 'package:news_app/features/daily_news/domain/usecase/get_article_param.dart';

import '../../../../core/resources/Result.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/article.dart';
import '../../data/repository/article_repository.dart';

class GetArticleUsecase
    implements UseCase<Result<List<Article>>, GetArticleParam> {
  final ArticleRepository _articleRepository;

  GetArticleUsecase({required ArticleRepository articleRepository})
      : _articleRepository = articleRepository;

  @override
  Future<Result<List<Article>>> call(GetArticleParam param) async {
    var articleResult =
        await _articleRepository.getArticles(category: param.category);

    return switch (articleResult) {
      Success(value: final articles) => Result.success(articles),
      Failed(:final message) => Result.failed(message)
    };
  }
}
