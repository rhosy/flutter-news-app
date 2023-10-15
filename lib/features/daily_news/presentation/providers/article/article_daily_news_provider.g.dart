// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_daily_news_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articlesHash() => r'53c51929cffee1d66a5a14797e89f9e842d98ded';

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

/// See also [articles].
@ProviderFor(articles)
const articlesProvider = ArticlesFamily();

/// See also [articles].
class ArticlesFamily extends Family<AsyncValue<List<Article>>> {
  /// See also [articles].
  const ArticlesFamily();

  /// See also [articles].
  ArticlesProvider call({
    required String category,
  }) {
    return ArticlesProvider(
      category: category,
    );
  }

  @override
  ArticlesProvider getProviderOverride(
    covariant ArticlesProvider provider,
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
  String? get name => r'articlesProvider';
}

/// See also [articles].
class ArticlesProvider extends FutureProvider<List<Article>> {
  /// See also [articles].
  ArticlesProvider({
    required String category,
  }) : this._internal(
          (ref) => articles(
            ref as ArticlesRef,
            category: category,
          ),
          from: articlesProvider,
          name: r'articlesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articlesHash,
          dependencies: ArticlesFamily._dependencies,
          allTransitiveDependencies: ArticlesFamily._allTransitiveDependencies,
          category: category,
        );

  ArticlesProvider._internal(
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
  Override overrideWith(
    FutureOr<List<Article>> Function(ArticlesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ArticlesProvider._internal(
        (ref) => create(ref as ArticlesRef),
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
  FutureProviderElement<List<Article>> createElement() {
    return _ArticlesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticlesProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ArticlesRef on FutureProviderRef<List<Article>> {
  /// The parameter `category` of this provider.
  String get category;
}

class _ArticlesProviderElement extends FutureProviderElement<List<Article>>
    with ArticlesRef {
  _ArticlesProviderElement(super.provider);

  @override
  String get category => (origin as ArticlesProvider).category;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
