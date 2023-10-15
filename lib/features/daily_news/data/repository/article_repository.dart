import '../../../../core/resources/Result.dart';
import '../../domain/entities/article.dart';

//technology, business, health, sport
abstract interface class ArticleRepository {
  Future<Result<List<Article>>> getArticles({required String category});
  // Future<Result<List<Article>>> getTechnologyArticle();
  // Future<Result<List<Article>>> getBusinessArticle();
  // Future<Result<List<Article>>> getHealthArticle();
}
