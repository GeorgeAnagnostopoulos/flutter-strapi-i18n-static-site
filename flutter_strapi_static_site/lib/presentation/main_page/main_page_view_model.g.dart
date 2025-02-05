// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainPageViewModelHash() => r'43ac037ea143c718c6fc960a7984fbc48f49dc70';

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

abstract class _$MainPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<List<BlogPost>?> {
  late final String locale;

  FutureOr<List<BlogPost>?> build(
    String locale,
  );
}

/// See also [MainPageViewModel].
@ProviderFor(MainPageViewModel)
const mainPageViewModelProvider = MainPageViewModelFamily();

/// See also [MainPageViewModel].
class MainPageViewModelFamily extends Family<AsyncValue<List<BlogPost>?>> {
  /// See also [MainPageViewModel].
  const MainPageViewModelFamily();

  /// See also [MainPageViewModel].
  MainPageViewModelProvider call(
    String locale,
  ) {
    return MainPageViewModelProvider(
      locale,
    );
  }

  @override
  MainPageViewModelProvider getProviderOverride(
    covariant MainPageViewModelProvider provider,
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
  String? get name => r'mainPageViewModelProvider';
}

/// See also [MainPageViewModel].
class MainPageViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MainPageViewModel, List<BlogPost>?> {
  /// See also [MainPageViewModel].
  MainPageViewModelProvider(
    String locale,
  ) : this._internal(
          () => MainPageViewModel()..locale = locale,
          from: mainPageViewModelProvider,
          name: r'mainPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mainPageViewModelHash,
          dependencies: MainPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              MainPageViewModelFamily._allTransitiveDependencies,
          locale: locale,
        );

  MainPageViewModelProvider._internal(
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
  FutureOr<List<BlogPost>?> runNotifierBuild(
    covariant MainPageViewModel notifier,
  ) {
    return notifier.build(
      locale,
    );
  }

  @override
  Override overrideWith(MainPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: MainPageViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MainPageViewModel, List<BlogPost>?>
      createElement() {
    return _MainPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MainPageViewModelProvider && other.locale == locale;
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
mixin MainPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<List<BlogPost>?> {
  /// The parameter `locale` of this provider.
  String get locale;
}

class _MainPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MainPageViewModel,
        List<BlogPost>?> with MainPageViewModelRef {
  _MainPageViewModelProviderElement(super.provider);

  @override
  String get locale => (origin as MainPageViewModelProvider).locale;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
