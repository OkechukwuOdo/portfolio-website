import 'package:flutter/material.dart';
import 'package:portfolio_website/styles/app_colors.dart';

class Customtext extends StatelessWidget {
  final String text;
  final double? size;
   final double? wordSpacing;
    final double? letterSpacing;
  final Color? color;
  const Customtext({super.key, required this.text, this.size, this.color, this.wordSpacing, this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color ?? AppColors.whiteColor, fontSize: size ?? 16,letterSpacing: letterSpacing??0,wordSpacing: wordSpacing??0),
    );
  }
}
