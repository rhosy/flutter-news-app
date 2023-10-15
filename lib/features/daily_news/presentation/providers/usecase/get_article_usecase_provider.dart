import '../../../domain/usecase/get_article_usecase.dart';
import '../article_repository/article_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_article_usecase_provider.g.dart';

@riverpod
GetArticleUsecase getArticleUsecase(GetArticleUsecaseRef ref) =>
    GetArticleUsecase(articleRepository: ref.watch(articleRepositoryProvider));
