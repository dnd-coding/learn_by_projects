import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_cat_flutter/config/theme/app_theme.dart';
import 'package:the_cat_flutter/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:the_cat_flutter/features/splash/presentation/widgets/logo_component.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashLoaded) {
          Navigator.of(context).pushReplacementNamed('/login');
        }
      },
      builder: (context, state) {
        if (state is SplashInitial) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  royalPurple,
                  electricCyan,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoComponent(),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(
                    color: electricCyan,
                  ),
                )
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
