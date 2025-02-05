// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsPageViewModelHash() =>
    r'df82b9a6d741520b83d4ccd6b101b617ce60ee38';

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

abstract class _$ProductsPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<List<ProductModel>?> {
  late final String locale;

  FutureOr<List<ProductModel>?> build(
    String locale,
  );
}

/// See also [ProductsPageViewModel].
@ProviderFor(ProductsPageViewModel)
const productsPageViewModelProvider = ProductsPageViewModelFamily();

/// See also [ProductsPageViewModel].
class ProductsPageViewModelFamily
    extends Family<AsyncValue<List<ProductModel>?>> {
  /// See also [ProductsPageViewModel].
  const ProductsPageViewModelFamily();

  /// See also [ProductsPageViewModel].
  ProductsPageViewModelProvider call(
    String locale,
  ) {
    return ProductsPageViewModelProvider(
      locale,
    );
  }

  @override
  ProductsPageViewModelProvider getProviderOverride(
    covariant ProductsPageViewModelProvider provider,
  ) {
    return call(
      provider.locale,
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
  String? get name => r'productsPageViewModelProvider';
}

/// See also [ProductsPageViewModel].
class ProductsPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProductsPageViewModel,
        List<ProductModel>?> {
  /// See also [ProductsPageViewModel].
  ProductsPageViewModelProvider(
    String locale,
  ) : this._internal(
          () => ProductsPageViewModel()..locale = locale,
          from: productsPageViewModelProvider,
          name: r'productsPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsPageViewModelHash,
          dependencies: ProductsPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              ProductsPageViewModelFamily._allTransitiveDependencies,
          locale: locale,
        );

  ProductsPageViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.locale,
  }) : super.internal();

  final String locale;

  @override
  FutureOr<List<ProductModel>?> runNotifierBuild(
    covariant ProductsPageViewModel notifier,
  ) {
    return notifier.build(
      locale,
    );
  }

  @override
  Override overrideWith(ProductsPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductsPageViewModelProvider._internal(
        () => create()..locale = locale,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        locale: locale,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProductsPageViewModel,
      List<ProductModel>?> createElement() {
    return _ProductsPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsPageViewModelProvider && other.locale == locale;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locale.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductsPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<List<ProductModel>?> {
  /// The parameter `locale` of this provider.
  String get locale;
}

class _ProductsPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProductsPageViewModel,
        List<ProductModel>?> with ProductsPageViewModelRef {
  _ProductsPageViewModelProviderElement(super.provider);

  @override
  String get locale => (origin as ProductsPageViewModelProvider).locale;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
