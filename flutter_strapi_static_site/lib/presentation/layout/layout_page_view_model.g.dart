// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$layoutPageViewModelHash() =>
    r'3c4f0734ec0189b0a26560189a32936581fba72e';

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

abstract class _$LayoutPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<AppBarMenu> {
  late final String locale;

  FutureOr<AppBarMenu> build(
    String locale,
  );
}

/// See also [LayoutPageViewModel].
@ProviderFor(LayoutPageViewModel)
const layoutPageViewModelProvider = LayoutPageViewModelFamily();

/// See also [LayoutPageViewModel].
class LayoutPageViewModelFamily extends Family<AsyncValue<AppBarMenu>> {
  /// See also [LayoutPageViewModel].
  const LayoutPageViewModelFamily();

  /// See also [LayoutPageViewModel].
  LayoutPageViewModelProvider call(
    String locale,
  ) {
    return LayoutPageViewModelProvider(
      locale,
    );
  }

  @override
  LayoutPageViewModelProvider getProviderOverride(
    covariant LayoutPageViewModelProvider provider,
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
  String? get name => r'layoutPageViewModelProvider';
}

/// See also [LayoutPageViewModel].
class LayoutPageViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    LayoutPageViewModel, AppBarMenu> {
  /// See also [LayoutPageViewModel].
  LayoutPageViewModelProvider(
    String locale,
  ) : this._internal(
          () => LayoutPageViewModel()..locale = locale,
          from: layoutPageViewModelProvider,
          name: r'layoutPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$layoutPageViewModelHash,
          dependencies: LayoutPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              LayoutPageViewModelFamily._allTransitiveDependencies,
          locale: locale,
        );

  LayoutPageViewModelProvider._internal(
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
  FutureOr<AppBarMenu> runNotifierBuild(
    covariant LayoutPageViewModel notifier,
  ) {
    return notifier.build(
      locale,
    );
  }

  @override
  Override overrideWith(LayoutPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: LayoutPageViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<LayoutPageViewModel, AppBarMenu>
      createElement() {
    return _LayoutPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LayoutPageViewModelProvider && other.locale == locale;
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
mixin LayoutPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<AppBarMenu> {
  /// The parameter `locale` of this provider.
  String get locale;
}

class _LayoutPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LayoutPageViewModel,
        AppBarMenu> with LayoutPageViewModelRef {
  _LayoutPageViewModelProviderElement(super.provider);

  @override
  String get locale => (origin as LayoutPageViewModelProvider).locale;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
