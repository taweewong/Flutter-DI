import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_module.config.dart';
import 'getit_manual/di/getit_manual_module.dart';

final getIt = GetIt.instance;

/// *
/// Setup for getit_manual package

void setupGetIt() {
  getItManualModule();
}

/// *
/// Setup for getit_with_injectable
/// Instead of manual create dependency
/// we use @Injectable or @Singleton instead

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();
