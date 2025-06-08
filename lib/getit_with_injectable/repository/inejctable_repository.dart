import 'package:flutter_di/getit_with_injectable/service/injectable_service.dart';
import 'package:injectable/injectable.dart';

import '../model/injectable_response.dart';

abstract class InjectableRepository {
  Future<InjectableResponse> getAsyncText();
}

@Singleton(as: InjectableRepository)
class InjectableRepositoryImpl extends InjectableRepository {

  InjectableService service;

  InjectableRepositoryImpl(this.service);

  @override
  Future<InjectableResponse> getAsyncText() async {
    return await service.getAsyncText();
  }
}