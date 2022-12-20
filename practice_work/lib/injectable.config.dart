// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/dio_client.dart' as _i4;
import 'data/events/repository/events_repository_impl.dart' as _i6;
import 'domain/events/bloc/events_bloc.dart' as _i7;
import 'domain/events/repository/events_repository.dart' as _i5;
import 'navigation/router.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.DioClient>(() => _i4.DioClientImpl());
  gh.factory<_i5.EventsRepository>(
      () => _i6.EventsRepositoryImpl(get<_i4.DioClient>()));
  gh.lazySingleton<_i7.EventsBloc>(
      () => _i7.EventsBloc(get<_i5.EventsRepository>()));
  return get;
}
