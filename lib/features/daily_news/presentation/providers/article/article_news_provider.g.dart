// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_news_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articleNewsHash() => r'6bd2f6b05148d51a3f5c61247ded759abffcdad2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ArticleNews
    extends BuildlessAutoDisposeAsyncNotifier<List<Article>> {
  late final String category;

  FutureOr<List<Article>> build({
    required String category,
  });
}

/// See also [ArticleNews].
@ProviderFor(ArticleNews)
const articleNewsProvider = ArticleNewsFamily();

/// See also [ArticleNews].
class ArticleNewsFamily extends Family<AsyncValue<List<Article>>> {
  /// See also [ArticleNews].
  const ArticleNewsFamily();

  /// See also [ArticleNews].
  ArticleNewsProvider call({
    required String category,
  }) {
    return ArticleNewsProvider(
      category: category,
    );
  }

  @override
  ArticleNewsProvider getProviderOverride(
    covariant ArticleNewsProvider provider,
  ) {
    return call(
      category: provider.category,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'articleNewsProvider';
}

/// See also [ArticleNews].
class ArticleNewsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ArticleNews, List<Article>> {
  /// See also [ArticleNews].
  ArticleNewsProvider({
    required String category,
  }) : this._internal(
          () => ArticleNews()..category = category,
          from: articleNewsProvider,
          name: r'articleNewsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articleNewsHash,
          dependencies: ArticleNewsFamily._dependencies,
          allTransitiveDependencies:
              ArticleNewsFamily._allTransitiveDependencies,
          category: category,
        );

  ArticleNewsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final String category;

  @override
  FutureOr<List<Article>> runNotifierBuild(
    covariant ArticleNews notifier,
  ) {
    return notifier.build(
      category: category,
    );
  }

  @override
  Override overrideWith(ArticleNews Function() create) {
    return ProviderOverride(
      origin: this,
      override: ArticleNewsProvider._internal(
        () => create()..category = category,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ArticleNews, List<Article>>
      createElement() {
    return _ArticleNewsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticleNewsProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ArticleNewsRef on AutoDisposeAsyncNotifierProviderRef<List<Article>> {
  /// The parameter `category` of this provider.
  String get category;
}

class _ArticleNewsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ArticleNews, List<Article>>
    with ArticleNewsRef {
  _ArticleNewsProviderElement(super.provider);

  @override
  String get category => (origin as ArticleNewsProvider).category;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
