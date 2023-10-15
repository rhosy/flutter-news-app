import 'package:news_app/features/daily_news/domain/usecase/get_article_param.dart';

import '../../../../../core/resources/Result.dart';
import '../../../domain/entities/article.dart';
import '../../../domain/usecase/get_article_usecase.dart';
import '../usecase/get_article_usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_daily_news_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Article>> articles(ArticlesRef ref,
    {required String category}) async {
  GetArticleUsecase getArticleUsecase = ref.read(getArticleUsecaseProvider);

  var articleResult =
      await getArticleUsecase(GetArticleParam(category: category));
  return switch (articleResult) {
    Success(value: final articles) => articles,
    Failed(message: _) => const []
  };
}
