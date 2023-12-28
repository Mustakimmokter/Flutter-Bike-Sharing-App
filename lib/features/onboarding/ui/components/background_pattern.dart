import 'package:flutter/material.dart';

class BackgroundPattern extends StatelessWidget {
  const BackgroundPattern({super.key,
    required this.pattern,
    required this.size,
  });

  final Size size;
  final String pattern;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        height: size.height / 1.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pattern),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
