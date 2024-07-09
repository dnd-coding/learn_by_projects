import 'package:flutter/material.dart';
import 'package:the_cat_flutter/gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  transformAlignment: FractionalOffset.topCenter,
                  child: Transform.scale(
                    scale: 2.5,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  width: 500,
                  height: 500,
                  Assets.images.catLoginImage.path,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.images.catLoginLogo.path,
                  width: 180,
                  height: 100,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 210, 137, 223),
                    ),
                  ),
                ),
                Text(
                  'Login',
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
