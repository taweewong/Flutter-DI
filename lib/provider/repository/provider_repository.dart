import 'package:flutter_di/provider/service/provider_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/provider_response.dart';

abstract class ProviderRepository {
  Future<ProviderResponse> getAsyncText();
}

class ProviderRepositoryImpl extends ProviderRepository {

  ProviderService service;

  ProviderRepositoryImpl(this.service);

  @override
  Future<ProviderResponse> getAsyncText() async {
    return await service.getAsyncText();
  }
}

final providerRepositoryProvider = Provider((ref) {
  ProviderService service = ref.watch(providerServiceProvider);
  return ProviderRepositoryImpl(service) as ProviderRepository;
});