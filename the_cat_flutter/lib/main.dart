import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_cat_flutter/config/routes/app_route.dart';
import 'package:the_cat_flutter/config/theme/app_theme.dart';
import 'package:the_cat_flutter/features/home/presentation/bloc/home_bloc.dart';
import 'package:the_cat_flutter/features/splash/presentation/bloc/splash_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<SplashBloc>(
          create: (context) => sl<SplashBloc>()..add(GetBreedsEvent()),
        ),
        BlocProvider(
          create: (context) => sl<HomeBloc>()..add(const SwitchPageEvent(0)),
        ),
      ],
      child: SafeArea(
        child: MaterialApp(
          theme: appTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          initialRoute: '/',
        ),
      ),
    );
  }
}
