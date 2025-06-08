// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injectable_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$injectableViewModelHash() =>
    r'618b2188daf89eb5af669d0683366dd5adba11fa';

/// *
/// `GetItManualRepository` should pass through constructor
/// for the sake of unit testing, so that we can mock repository
/// and pass the mock one to this view model.
/// But it cannot be done that easily for Riverpod.
/// Riverpod doesn't need another DI, it self can works like DI.
/// Example: https://stackoverflow.com/questions/78055149/how-to-pass-dependency-to-asyncnotifier-with-the-new-riverpod-syntax
///
/// The right way is create provider for service and repository
/// then we mock these provider when testing `GetItManualViewModel`
///
/// Copied from [InjectableViewModel].
@ProviderFor(InjectableViewModel)
final injectableViewModelProvider = AutoDisposeNotifierProvider<
  InjectableViewModel,
  InjectableResponse
>.internal(
  InjectableViewModel.new,
  name: r'injectableViewModelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$injectableViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$InjectableViewModel = AutoDisposeNotifier<InjectableResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
