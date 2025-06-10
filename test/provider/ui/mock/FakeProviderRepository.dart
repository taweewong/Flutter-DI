import 'dart:async';

import 'package:flutter_di/provider/model/provider_response.dart';
import 'package:flutter_di/provider/repository/provider_repository.dart';

class FakeProviderRepository extends ProviderRepository {

  @override
  Future<ProviderResponse> getAsyncText() async {
    return ProviderResponse(text: "This is text for unit test");
  }
}