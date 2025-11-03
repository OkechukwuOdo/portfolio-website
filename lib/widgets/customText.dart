import 'package:flutter/material.dart';
import 'package:portfolio_website/styles/app_colors.dart';

class Customtext extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  const Customtext({super.key, required this.text, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color ?? AppColors.whiteColor, fontSize: size ?? 16),
    );
  }
}
