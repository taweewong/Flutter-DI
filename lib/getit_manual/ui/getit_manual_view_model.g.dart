// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getit_manual_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getItManualViewModelHash() =>
    r'796925ef3a297477bec8acc030535778d04e08ab';

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
/// Copied from [GetItManualViewModel].
@ProviderFor(GetItManualViewModel)
final getItManualViewModelProvider = AutoDisposeNotifierProvider<
  GetItManualViewModel,
  GetItManualResponse
>.internal(
  GetItManualViewModel.new,
  name: r'getItManualViewModelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getItManualViewModelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetItManualViewModel = AutoDisposeNotifier<GetItManualResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
