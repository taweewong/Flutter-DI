import 'package:flutter_di/getit_manual/di/getit_manual_module.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getItManualModule();
}