import 'package:dio/dio.dart';
import '../../../../../core/resources/Result.dart';
import '../../../domain/entities/article.dart';
import '../../repository/article_repository.dart';

class ArticleRepositoryImp implements ArticleRepository {
  final Dio? _dio;
  final String _apiKey = "e017ecdad09146f9ab05f20ede21f3c6";
  late final Options _options = Options(headers: {
    'Authorization': 'Bearer $_apiKey',
  });

  ArticleRepositoryImp({Dio? dio}) : _dio = dio ?? Dio();
  @override
  Future<Result<List<Article>>> getArticles({required String category}) async {
    try {
      final response = await _dio!.get(
        "https://newsapi.org/v2/top-headlines?country=id&category=$category",
        options: _options,
      );
      final result = List<Map<String, dynamic>>.from(response.data['articles']);
      //print("Result: $result");
      return Result.success(result.map((e) => Article.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}
