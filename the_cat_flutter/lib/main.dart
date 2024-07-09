import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_cat_flutter/config/routes/app_route.dart';
import 'package:the_cat_flutter/features/splash/cubit/splash_cubit.dart';
import 'package:the_cat_flutter/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SplashCubit>()/*..startSplash()*/,
      child: const SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          initialRoute: '/login',
        ),
      ),
    );
  }
}
