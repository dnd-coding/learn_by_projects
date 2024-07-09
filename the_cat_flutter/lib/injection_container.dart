import 'package:get_it/get_it.dart';
import 'package:the_cat_flutter/features/splash/cubit/splash_cubit.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerFactory<SplashCubit>(() => SplashCubit());
}
