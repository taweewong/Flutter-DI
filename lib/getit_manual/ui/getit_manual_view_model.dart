import 'package:flutter_di/getit_manual/model/getit_manual_response.dart';
import 'package:flutter_di/getit_manual/repository/getit_manual_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app_module.dart';

part 'getit_manual_view_model.g.dart';

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
class GetItManualViewModel extends _$GetItManualViewModel {
  GetItManualRepository repository = getIt<GetItManualRepository>();

  @override
  GetItManualResponse build() {
    fetchResponse();
    return GetItManualResponse(text: "Loading");
  }

  void fetchResponse() async {
    state = await repository.getAsyncText();
  }
}