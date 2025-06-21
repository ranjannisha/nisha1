// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nisha1/src/app/presentation/bloc/localization/localization_bloc.dart'
    as _i537;
import 'package:nisha1/src/core/di/register_modules.dart' as _i55;
import 'package:nisha1/src/core/helpers/storage_helper.dart' as _i847;
import 'package:nisha1/src/core/internet/internet_info.dart' as _i970;
import 'package:nisha1/src/core/routes/app_router.dart' as _i575;
import 'package:nisha1/src/features/home/data/data_source/home_remote_data_source.dart'
    as _i793;
import 'package:nisha1/src/features/home/data/repository/home_repository_impl.dart'
    as _i709;
import 'package:nisha1/src/features/home/domain/repository/home_repository.dart'
    as _i427;
import 'package:nisha1/src/features/home/domain/usecase/home_usecase.dart'
    as _i96;
import 'package:nisha1/src/features/home/presentation/bloc/home_cubit.dart'
    as _i902;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i537.LocalizationBloc>(() => _i537.LocalizationBloc());
    gh.lazySingleton<_i575.AppRouter>(() => registerModule.router);
    gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => registerModule.storage);
    gh.lazySingleton<_i847.StorageHelper>(() => registerModule.storageHelper);
    gh.lazySingleton<_i970.InternetInfo>(
      () => _i970.InternetInfoImpl(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.authenticatedDio,
      instanceName: 'authenticated',
    );
    gh.lazySingleton<_i793.HomeRemoteDataSource>(
      () => _i793.HomeRemoteSourceImpl(
        gh<_i361.Dio>(instanceName: 'authenticated'),
        gh<_i847.StorageHelper>(),
      ),
    );
    gh.lazySingleton<_i427.HomeRepository>(
      () => _i709.HomeRepositoryImp(
        gh<_i793.HomeRemoteDataSource>(),
        gh<_i970.InternetInfo>(),
      ),
    );
    gh.lazySingleton<_i96.HomeUseCase>(
      () => _i96.HomeUseCase(gh<_i427.HomeRepository>()),
    );
    gh.factory<_i902.HomeCubit>(() => _i902.HomeCubit(gh<_i96.HomeUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i55.RegisterModule {}
