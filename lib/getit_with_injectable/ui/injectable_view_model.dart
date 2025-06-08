import 'package:flutter_di/getit_manual/model/getit_manual_response.dart';
import 'package:flutter_di/getit_with_injectable/model/injectable_response.dart';
import 'package:flutter_di/getit_with_injectable/repository/inejctable_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app_module.dart';

part 'injectable_view_model.g.dart';

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
@riverpod
class InjectableViewModel extends _$InjectableViewModel {
  InjectableRepository repository = getIt<InjectableRepository>();

  InjectableResponse build() {
    fetchResponse();
    return InjectableResponse(text: "Loading");
  }

  void fetchResponse() async {
    state = await repository.getAsyncText();
  }
}