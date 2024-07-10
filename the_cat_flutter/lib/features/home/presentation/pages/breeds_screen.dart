import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_cat_flutter/features/home/presentation/bloc/home_bloc.dart';
import 'package:the_cat_flutter/features/home/presentation/widgets/breed_widget.dart';
import 'package:the_cat_flutter/features/splash/presentation/bloc/splash_bloc.dart';

class BreedsScreen extends StatelessWidget {
  const BreedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: BlocConsumer<SplashBloc, SplashState>(
          listener: (_, state) {
            // TODO: implement listener
          },
          builder: (_, state) {
            if (state is SplashLoaded) {
              return ListView.builder(
                itemCount: state.breeds != null ? state.breeds!.length : 0,
                itemBuilder: (context, index) {
                  return BreedWidget(breed: state.breeds![index]);
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
