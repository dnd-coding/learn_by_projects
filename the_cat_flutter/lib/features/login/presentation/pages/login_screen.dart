import 'package:flutter/material.dart';
import 'package:the_cat_flutter/config/theme/app_theme.dart';
import 'package:the_cat_flutter/gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  Assets.images.catLoginImage.path,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'The Cat\nLibrary',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Cat breeds detail and random cat images that make'
                      ' you understand more about you cats and maybe love them more',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(
                          255,
                          184,
                          184,
                          194,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: const Text('Explore'),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
