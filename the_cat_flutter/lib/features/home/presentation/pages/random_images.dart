import 'package:flutter/material.dart';

class RandomImages extends StatelessWidget {
  const RandomImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Text('Random Images'),
      ),
    );
  }
}
