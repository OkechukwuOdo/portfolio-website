import 'package:flutter/material.dart';
import 'package:portfolio_website/styles/app_colors.dart';

import '../widgets/customText.dart';

class MySkills extends StatelessWidget {
  const MySkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customtext(
            text: "MY SKILLS",
            size: 35,
            color: AppColors.primaryColor,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SkillItem(
                title: 'Java',
                value: 0.9,
              ),
              SizedBox(
                width: 55,
              ),
              SkillItem(
                title: 'DART',
                value: 0.8,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SkillItem(
                title: 'Spring Boot',
                value: 0.9,
              ),
              SizedBox(
                width: 55,
              ),
              SkillItem(
                title: 'Flutter',
                value: 0.8,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              SkillItem(
                title: 'DevOp',
                value: 0.5,
              ),
              SizedBox(
                width: 55,
              ),
              SkillItem(
                title: 'AWS',
                value: 0.5,
              ),
            ],
          ),
          // SkillItem(
          //   title: 'DevOp',
          //   value: 0.8,
          // ),
        ],
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String title;
  final double value;
  const SkillItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text('${value * 100}%'),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        LinearProgressIndicator(
          color: AppColors.primaryColor,
          backgroundColor: const Color(0XFF00A86B),
          value: value,
          borderRadius: BorderRadius.circular(10),
          minHeight: 16,
        ),
      ],
    ));
  }
}
