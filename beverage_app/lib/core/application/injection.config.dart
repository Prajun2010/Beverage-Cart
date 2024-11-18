// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/authentication/application/account_removal_bloc/account_removal_bloc.dart'
    as _i44;
import '../../features/authentication/application/auth_bloc/auth_bloc.dart'
    as _i45;
import '../../features/authentication/application/sign_up_bloc/sign_up_bloc.dart'
    as _i42;
import '../../features/authentication/application/verification_bloc/verification_bloc.dart'
    as _i43;
import '../../features/authentication/domain/repositories/i_authentication_repository.dart'
    as _i22;
import '../../features/authentication/infrastructure/datasources/i_authentication_local_datasource.dart'
    as _i6;
import '../../features/authentication/infrastructure/datasources/i_authentication_remote_datasource.dart'
    as _i21;
import '../../features/authentication/infrastructure/repositories/authentication_repository.dart'
    as _i23;
import '../../features/dashboard/application/banner_watcher_bloc/banner_watcher_bloc.dart'
    as _i46;
import '../../features/dashboard/domain/repositories/i_dashboard_repository.dart'
    as _i28;
import '../../features/dashboard/infrastructure/datasources/i_dashboard_remote_datasource.dart'
    as _i27;
import '../../features/dashboard/infrastructure/repositories/dashboard_repository.dart'
    as _i29;
import '../../features/distributor/application/distributor_watcher_bloc/distributor_watcher_bloc.dart'
    as _i47;
import '../../features/distributor/domain/repositories/i_distributor_repoistory.dart'
    as _i31;
import '../../features/distributor/infrastructure/datasources/i_distributor_remote_datasource.dart'
    as _i30;
import '../../features/distributor/infrastructure/repositories/distributor_repository.dart'
    as _i32;
import '../../features/home/application/bottom_navigation_cubut/bottom_navigation_cubit.dart'
    as _i3;
import '../../features/order/application/order_details_action_bloc/order_details_action_bloc.dart'
    as _i34;
import '../../features/order/application/order_details_watcher_bloc/order_details_watcher_bloc.dart'
    as _i35;
import '../../features/order/application/order_history_watcher_bloc/order_history_watcher_bloc.dart'
    as _i36;
import '../../features/order/application/order_ledger_watcher_bloc/order_ledger_watcher_bloc.dart'
    as _i37;
import '../../features/order/domain/repositories/i_order_repository.dart'
    as _i9;
import '../../features/order/infrastructure/datasoruces/i_order_remote_datasource.dart'
    as _i8;
import '../../features/order/infrastructure/repositories/order_repository.dart'
    as _i10;
import '../../features/product/application/feature_product_bloc/featured_product_bloc.dart'
    as _i48;
import '../../features/product/application/product_action_bloc/product_action_bloc.dart'
    as _i38;
import '../../features/product/application/product_watcher_bloc/product_watcher_bloc.dart'
    as _i39;
import '../../features/product/domain/repositories/i_product_repository.dart'
    as _i13;
import '../../features/product/infrastructure/datasources/i_product_local_datasource.dart'
    as _i11;
import '../../features/product/infrastructure/datasources/i_product_remote_datasource.dart'
    as _i12;
import '../../features/product/infrastructure/repositories/product_repository.dart'
    as _i14;
import '../../features/profile/application/link_watcher_bloc/link_watcher_bloc.dart'
    as _i33;
import '../../features/profile/application/profile_watcher_bloc/profile_watcher_bloc.dart'
    as _i40;
import '../../features/profile/domain/repositories/i_profile_repository.dart'
    as _i17;
import '../../features/profile/infrastructure/datasources/i_profile_local_datasource.dart'
    as _i15;
import '../../features/profile/infrastructure/datasources/i_profile_remote_datasource.dart'
    as _i16;
import '../../features/profile/infrastructure/repositories/profile_repository.dart'
    as _i18;
import '../domain/repositories/i_core_repository.dart' as _i25;
import '../helpers/input_converter.dart' as _i19;
import '../infrastructure/datasources/i_core_remote_datasource.dart' as _i24;
import '../infrastructure/network/i_http_client.dart' as _i7;
import '../infrastructure/repositories/core_repository.dart' as _i26;
import 'external_injection.dart' as _i49;
import 'search_bloc/search_bloc.dart' as _i41;
import 'theme_bloc/theme_bloc.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final externalInjection = _$ExternalInjection();
  gh.factory<_i3.BottomNavigationCubit>(() => _i3.BottomNavigationCubit());
  gh.lazySingleton<_i4.Dio>(() => externalInjection.dio);
  await gh.factoryAsync<_i5.FlutterSecureStorage>(
      () => externalInjection.secureStorage,
      preResolve: true);
  gh.lazySingleton<_i6.IAuthenticationLocalDataSource>(
      () => _i6.AuthenticationLocalDataSource(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i7.IHttpClient>(() => _i7.HttpClient(get<_i4.Dio>()));
  gh.lazySingleton<_i8.IOrderRemoteDataSource>(
      () => _i8.OrderRemoteDataSource(get<_i7.IHttpClient>()));
  gh.lazySingleton<_i9.IOrderRepository>(
      () => _i10.OrderRepository(get<_i8.IOrderRemoteDataSource>()));
  gh.lazySingleton<_i11.IProductLocalDataSource>(
      () => _i11.ProductLocalDataSource(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i12.IProductRemoteDataSource>(
      () => _i12.ProductRemoteDataSource(get<_i7.IHttpClient>()));
  gh.lazySingleton<_i13.IProductRepository>(() => _i14.ProductRepository(
      get<_i12.IProductRemoteDataSource>(),
      get<_i11.IProductLocalDataSource>()));
  gh.lazySingleton<_i15.IProfileLocalDataSource>(
      () => _i15.ProfileLocalDataSource(get<_i5.FlutterSecureStorage>()));
  gh.lazySingleton<_i16.IProfileRemoteDataSource>(
      () => _i16.ProfileRemoteDataSource(get<_i7.IHttpClient>()));
  gh.lazySingleton<_i17.IProfileRepository>(() => _i18.ProfileRepository(
      get<_i16.IProfileRemoteDataSource>(),
      get<_i15.IProfileLocalDataSource>()));
  gh.lazySingleton<_i19.InputConvert>(() => _i19.InputConvert());
  gh.factory<_i20.ThemeBloc>(() => _i20.ThemeBloc());
  gh.lazySingleton<_i21.IAuthenticationRemoteDataSource>(
      () => _i21.AuthenticationRemoteDataSource(get<_i7.IHttpClient>()));
  gh.lazySingleton<_i22.IAuthenticationRepository>(() =>
      _i23.AuthenticationRepository(
          get<_i21.IAuthenticationRemoteDataSource>(),
          get<_i6.IAuthenticationLocalDataSource>(),
          get<_i11.IProductLocalDataSource>()));
  gh.lazySingleton<_i24.ICoreRemoteDataSource>(
      () => _i24.CoreRemoteDataSource(get<_i7.IHttpClient>()));
  gh.lazySingleton<_i25.ICoreRepository>(
      () => _i26.CoreRepository(get<_i24.ICoreRemoteDataSource>()));
  gh.lazySingleton<_i27.IDashboardRemoteDataSource>(
      () => _i27.DashboardRemoteDataSource(get<_i7.IHttpClient>()));
  gh.lazySingleton<_i28.IDashboardRepository>(
      () => _i29.DashboardRepository(get<_i27.IDashboardRemoteDataSource>()));
  gh.lazySingleton<_i30.IDistributorRemoteDataSoruce>(
      () => _i30.DistributorRemoteDataSource(get<_i7.IHttpClient>()));
  gh.lazySingleton<_i31.IDistributorRepository>(() =>
      _i32.DistributorRepository(get<_i30.IDistributorRemoteDataSoruce>()));
  gh.factory<_i33.LinkWatcherBloc>(() => _i33.LinkWatcherBloc(
      get<_i22.IAuthenticationRepository>(), get<_i17.IProfileRepository>()));
  gh.factory<_i34.OrderDetailsActionBloc>(() => _i34.OrderDetailsActionBloc(
      get<_i22.IAuthenticationRepository>(), get<_i9.IOrderRepository>()));
  gh.factory<_i35.OrderDetailsWatcherBloc>(() => _i35.OrderDetailsWatcherBloc(
      get<_i22.IAuthenticationRepository>(), get<_i9.IOrderRepository>()));
  gh.factory<_i36.OrderHistoryWatcherBloc>(() => _i36.OrderHistoryWatcherBloc(
      get<_i9.IOrderRepository>(), get<_i22.IAuthenticationRepository>()));
  gh.factory<_i37.OrderLedgerWatcherBloc>(() => _i37.OrderLedgerWatcherBloc(
      get<_i9.IOrderRepository>(), get<_i22.IAuthenticationRepository>()));
  gh.factory<_i38.ProductActionBloc>(() => _i38.ProductActionBloc(
      get<_i22.IAuthenticationRepository>(), get<_i13.IProductRepository>()));
  gh.factory<_i39.ProductWatcherBloc>(() => _i39.ProductWatcherBloc(
      get<_i13.IProductRepository>(), get<_i22.IAuthenticationRepository>()));
  gh.factory<_i40.ProfileWatcherBloc>(() => _i40.ProfileWatcherBloc(
      get<_i22.IAuthenticationRepository>(), get<_i17.IProfileRepository>()));
  gh.factory<_i41.SearchBloc>(() => _i41.SearchBloc(
      get<_i22.IAuthenticationRepository>(), get<_i25.ICoreRepository>()));
  gh.factory<_i42.SignUpBloc>(() => _i42.SignUpBloc(
      get<_i19.InputConvert>(), get<_i22.IAuthenticationRepository>()));
  gh.factory<_i43.VerificationBloc>(() => _i43.VerificationBloc(
      get<_i19.InputConvert>(), get<_i22.IAuthenticationRepository>()));
  gh.factory<_i44.AccountRemovalBloc>(
      () => _i44.AccountRemovalBloc(get<_i22.IAuthenticationRepository>()));
  gh.factory<_i45.AuthBloc>(
      () => _i45.AuthBloc(get<_i22.IAuthenticationRepository>()));
  gh.factory<_i46.BannerWatcherBloc>(() => _i46.BannerWatcherBloc(
      get<_i22.IAuthenticationRepository>(), get<_i28.IDashboardRepository>()));
  gh.factory<_i47.DistributorWatcherBloc>(() => _i47.DistributorWatcherBloc(
      get<_i22.IAuthenticationRepository>(),
      get<_i31.IDistributorRepository>()));
  gh.factory<_i48.FeaturedProductBloc>(() => _i48.FeaturedProductBloc(
      get<_i22.IAuthenticationRepository>(), get<_i13.IProductRepository>()));
  return get;
}

class _$ExternalInjection extends _i49.ExternalInjection {}
