
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/setup/background setup.png",
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      scale: 1,
    );
  }
}
