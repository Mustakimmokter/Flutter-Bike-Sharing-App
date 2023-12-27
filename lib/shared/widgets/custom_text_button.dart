import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key,
    required this.title,
    required this.onTap,
    this.size,
    this.color,
  });

  final String title;
  final VoidCallback onTap;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(title, style: TextStyle(
          color: color ?? const Color(0xff3D003E),fontSize: size,fontWeight: FontWeight.bold,),),
    );
  }
}
