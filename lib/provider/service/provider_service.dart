import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/provider_response.dart';

abstract class ProviderService {
  Future<ProviderResponse> getAsyncText();
}

class ProviderServiceImpl extends ProviderService {

  @override
  Future<ProviderResponse> getAsyncText() async {
    await Future.delayed(Duration(seconds: 2));
    return ProviderResponse(
      text: "This is content from response (using provider)"
    );
  }
}

final providerServiceProvider = Provider((ref) {
  return ProviderServiceImpl() as ProviderService;
});