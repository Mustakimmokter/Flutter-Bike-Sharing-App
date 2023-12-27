import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomSVG extends StatelessWidget {
  const CustomSVG({super.key, required this.svg, this.width, this.height});

  final String svg;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(svg,height: height,width: width,);
  }
}
