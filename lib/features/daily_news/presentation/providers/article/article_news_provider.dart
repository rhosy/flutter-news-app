import 'package:news_app/features/daily_news/domain/entities/article.dart';
import 'package:news_app/features/daily_news/domain/usecase/get_article_usecase.dart';
import 'package:news_app/features/daily_news/presentation/providers/usecase/get_article_usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/resources/Result.dart';
import '../../../domain/usecase/get_article_param.dart';

part 'article_news_provider.g.dart';

@riverpod
class ArticleNews extends _$ArticleNews {
  @override
  FutureOr<List<Article>> build({required String category}) async {
    GetArticleUsecase getArticleNews = ref.watch(getArticleUsecaseProvider);

    var articleResult =
        await getArticleNews(GetArticleParam(category: category));
    return switch (articleResult) {
      Success(value: final articles) => articles,
      Failed(message: _) => const []
    };
  }
}
