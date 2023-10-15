import '../../../data/sources/remote/article_repository_imp.dart';
import '../../../data/repository/article_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'article_repository_provider.g.dart';

@riverpod
ArticleRepository articleRepository(ArticleRepositoryRef ref) =>
    ArticleRepositoryImp();
