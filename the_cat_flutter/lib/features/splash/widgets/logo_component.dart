import 'package:flutter/material.dart';
import 'package:the_cat_flutter/gen/assets.gen.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 240,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        Assets.images.theCatLogo.path,
      ),
    );
  }
}
