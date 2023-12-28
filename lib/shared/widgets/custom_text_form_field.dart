import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
    this.controller,
    required this.icon,
    this.hints,
  });

  final String icon;
  final String? hints;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 20,color: Color(0xff3D003E)),
      decoration: InputDecoration(
        hintText: hints,
        contentPadding: const EdgeInsets.only(top: 20),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: SizedBox(
              child: SvgPicture.asset(icon),
          ),
        ),
      ),
    );
  }
}
