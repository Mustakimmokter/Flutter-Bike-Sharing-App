import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key,
    required this.text,
    this.size,
    this.color,
    this.overflow,
    this.fontWeight,
    this.textAlign,
  });

  final String text;
  final double? size;
  final Color? color;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
          color: color ?? const Color(0xff3D003E),fontSize: size,fontWeight: fontWeight,overflow: overflow,
      ),);
  }
}
