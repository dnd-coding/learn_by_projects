import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:the_cat_flutter/features/home/data/data_sources/remote/the_cat_api_service.dart';
import 'package:the_cat_flutter/features/home/data/repository/cat_breed_repository_impl.dart';
import 'package:the_cat_flutter/features/home/domain/repository/cat_breed_repository.dart';
import 'package:the_cat_flutter/features/home/domain/usecases/get_breeds.dart';
import 'package:the_cat_flutter/features/home/presentation/bloc/home_bloc.dart';
import 'package:the_cat_flutter/features/splash/presentation/bloc/splash_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton(TheCatApiService(sl()));

  sl.registerSingleton<CatBreedRepository>(CatBreedRepositoryImpl(sl()));

  sl.registerSingleton<GetBreedsUseCase>(GetBreedsUseCase(sl()));

  sl.registerFactory<SplashBloc>(() => SplashBloc(sl()));

  sl.registerFactory<HomeBloc>(() => HomeBloc());
}
