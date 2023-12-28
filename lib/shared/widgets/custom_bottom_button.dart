import 'package:flutter/material.dart';

class CustomBottomButton extends StatelessWidget {
  const CustomBottomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.titleColor,
      this.backgroundColor,
        this.horizontalPadding = 20,
      });

  final String title;
  final VoidCallback onPressed;
  final Color? titleColor, backgroundColor;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalPadding!),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: backgroundColor,
        gradient: backgroundColor == null? const LinearGradient(
          colors: [
            Color(0xff2af49a),
            Color(0xff0bb4e4),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ) : null,
        borderRadius: BorderRadius.circular(100)
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 16),
        onPressed: onPressed,
        elevation: 0,
        child: Text(
          title,
          style: TextStyle(fontSize: 16, color: titleColor ?? const Color(0xff3D003E)),
        ),
      ),
    );
  }
}
