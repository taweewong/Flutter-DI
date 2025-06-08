// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'getit_with_injectable/repository/inejctable_repository.dart' as _i1028;
import 'getit_with_injectable/service/injectable_service.dart' as _i959;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i959.InjectableService>(() => _i959.InjectableServiceImpl());
    gh.singleton<_i1028.InjectableRepository>(
      () => _i1028.InjectableRepositoryImpl(gh<_i959.InjectableService>()),
    );
    return this;
  }
}
