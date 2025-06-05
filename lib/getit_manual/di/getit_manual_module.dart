import 'package:flutter_di/app_module.dart';
import 'package:flutter_di/getit_manual/repository/getit_manual_repository.dart';
import 'package:flutter_di/getit_manual/service/getit_manual_service.dart';

void getItManualModule() {
  getIt.registerLazySingleton<GetItManualService>(() {
    return GetItManualServiceImpl();
  });

  getIt.registerLazySingleton<GetItManualRepository>(() {
    GetItManualService service = getIt.get<GetItManualService>();
    return GetItManualRepositoryImpl(service);
  });
}