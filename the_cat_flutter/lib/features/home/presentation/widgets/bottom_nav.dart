import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:the_cat_flutter/config/theme/app_theme.dart';
import 'package:the_cat_flutter/features/home/presentation/bloc/home_bloc.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: Colors.white,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBackgroundColor: royalPurple,
      tabBackgroundGradient: const LinearGradient(colors: [
        royalPurple,
        electricCyan,
      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      tabBorderRadius: 16,
      tabShadow: const [
        BoxShadow(color: royalPurple, blurRadius: 2),
        BoxShadow(color: electricCyan, blurRadius: 2),
      ],
      tabMargin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      onTabChange: (value) {
        context.read<HomeBloc>().add(SwitchPageEvent(value));
      },
      tabs: const [
        GButton(
          iconColor: Colors.black,
          iconActiveColor: Colors.black,
          textColor: Colors.black,
          icon: Icons.home_outlined,
          text: 'Home',
        ),
        GButton(
          iconColor: Colors.black,
          iconActiveColor: Colors.black,
          textColor: Colors.black,
          icon: Icons.image_outlined,
          text: 'Images',
        ),
      ],
    );
  }
}