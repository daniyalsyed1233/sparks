import 'package:flutter/material.dart';

class DDImage extends StatelessWidget {
  const DDImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/sp.png",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.3),
      colorBlendMode: BlendMode.darken,
    );
  }
}
