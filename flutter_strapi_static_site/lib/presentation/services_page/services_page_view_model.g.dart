// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$servicesPageViewModelHash() =>
    r'3a3304da38a1ddc05d7452952d7441ffaf3ca211';

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

abstract class _$ServicesPageViewModel
    extends BuildlessAutoDisposeAsyncNotifier<List<ServiceModel>?> {
  late final String locale;

  FutureOr<List<ServiceModel>?> build(
    String locale,
  );
}

/// See also [ServicesPageViewModel].
@ProviderFor(ServicesPageViewModel)
const servicesPageViewModelProvider = ServicesPageViewModelFamily();

/// See also [ServicesPageViewModel].
class ServicesPageViewModelFamily
    extends Family<AsyncValue<List<ServiceModel>?>> {
  /// See also [ServicesPageViewModel].
  const ServicesPageViewModelFamily();

  /// See also [ServicesPageViewModel].
  ServicesPageViewModelProvider call(
    String locale,
  ) {
    return ServicesPageViewModelProvider(
      locale,
    );
  }

  @override
  ServicesPageViewModelProvider getProviderOverride(
    covariant ServicesPageViewModelProvider provider,
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
  String? get name => r'servicesPageViewModelProvider';
}

/// See also [ServicesPageViewModel].
class ServicesPageViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ServicesPageViewModel,
        List<ServiceModel>?> {
  /// See also [ServicesPageViewModel].
  ServicesPageViewModelProvider(
    String locale,
  ) : this._internal(
          () => ServicesPageViewModel()..locale = locale,
          from: servicesPageViewModelProvider,
          name: r'servicesPageViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$servicesPageViewModelHash,
          dependencies: ServicesPageViewModelFamily._dependencies,
          allTransitiveDependencies:
              ServicesPageViewModelFamily._allTransitiveDependencies,
          locale: locale,
        );

  ServicesPageViewModelProvider._internal(
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
  FutureOr<List<ServiceModel>?> runNotifierBuild(
    covariant ServicesPageViewModel notifier,
  ) {
    return notifier.build(
      locale,
    );
  }

  @override
  Override overrideWith(ServicesPageViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: ServicesPageViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ServicesPageViewModel,
      List<ServiceModel>?> createElement() {
    return _ServicesPageViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServicesPageViewModelProvider && other.locale == locale;
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
mixin ServicesPageViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<List<ServiceModel>?> {
  /// The parameter `locale` of this provider.
  String get locale;
}

class _ServicesPageViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ServicesPageViewModel,
        List<ServiceModel>?> with ServicesPageViewModelRef {
  _ServicesPageViewModelProviderElement(super.provider);

  @override
  String get locale => (origin as ServicesPageViewModelProvider).locale;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
