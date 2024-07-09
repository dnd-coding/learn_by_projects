import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_cat_flutter/features/splash/cubit/splash_cubit.dart';
import 'package:the_cat_flutter/features/splash/widgets/logo_component.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is SplashLoaded) {
          Navigator.of(context).pushReplacementNamed('/login');
        }
      },
      builder: (context, state) {
        if (state is SplashLoading) {
          return Container(
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoComponent(),
                SizedBox(
                  height: 15,
                ),
                CircularProgressIndicator()
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
