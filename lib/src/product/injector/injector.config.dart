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

import '../../features/Auth/Login/controler/login_controller.dart' as _i356;
import '../../features/Auth/Register/controller/register_controller.dart'
    as _i190;
import '../../features/CuponPage/controller/cupon_controller.dart' as _i991;
import '../../features/Kuton/controller/kuton_controller.dart' as _i180;
import '../../features/MainPage/controller/main_controller.dart' as _i800;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.singleton<_i356.LoginController>(() => _i356.LoginController());
  gh.singleton<_i190.RegisterController>(() => _i190.RegisterController());
  gh.singleton<_i180.KutonController>(() => _i180.KutonController());
  gh.singleton<_i800.MainController>(() => _i800.MainController());
  gh.singleton<_i991.CuponController>(() => _i991.CuponController());
  return getIt;
}
