import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:the_cat_flutter/config/theme/app_theme.dart';
import 'package:the_cat_flutter/features/home/presentation/bloc/home_bloc.dart';
import 'package:the_cat_flutter/features/home/presentation/pages/breeds_screen.dart';
import 'package:the_cat_flutter/features/home/presentation/pages/random_images.dart';
import 'package:the_cat_flutter/features/home/presentation/widgets/bottom_nav.dart';
import 'package:the_cat_flutter/features/splash/presentation/bloc/splash_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is HomePageSelected) {
            if (state.selectedPage == 0) {
              return const BreedsScreen();
            } else {
              return const RandomImages();
            }
          }
          return Container();
        },
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
