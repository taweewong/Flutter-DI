import 'package:flutter_di/getit_manual/service/getit_manual_service.dart';

import '../model/getit_manual_response.dart';

abstract class GetItManualRepository {
  Future<GetItManualResponse> getAsyncText();
}

class GetItManualRepositoryImpl extends GetItManualRepository {

  GetItManualService service;

  GetItManualRepositoryImpl(this.service);

  @override
  Future<GetItManualResponse> getAsyncText() async {
    return await service.getAsyncText();
  }
}