import 'package:flutter_di/getit_manual/model/getit_manual_response.dart';
import 'package:flutter_di/getit_manual/repository/getit_manual_repository.dart';
import 'package:flutter_di/provider/model/provider_response.dart';
import 'package:flutter_di/provider/repository/provider_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../app_module.dart';

part 'provider_view_model.g.dart';

// Not sure that one riverpod class should handle only one state ?
// Because widget can watch many states, treat Notifier as a something similar to Flow
// Example: has Notifier class for state that is mutable
// and has normal Provider function for read only value
@riverpod
class ProviderViewModel extends _$ProviderViewModel {

  @override
  ProviderResponse build() {
    fetchResponse();
    return ProviderResponse(text: "Loading");
  }

  void fetchResponse() async {
    ProviderRepository repository = ref.watch(providerRepositoryProvider);
    state = await repository.getAsyncText();
  }
}