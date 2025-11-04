import 'package:flutter/material.dart';
import 'package:portfolio_website/compnents/constnats/constants.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 155,
        padding: const EdgeInsets.all(defaultPadding),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: AppColors.primaryColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // const SizedBox(
          //   height: 16,
          // ),
          const Customtext(
            text: "Other Relevant Skills",
            size: 20,
          ),
          const SizedBox(
            height: 32,
          ),
          Wrap(
            spacing: 52,
            runSpacing: 32,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.whiteColor),
                        child: const Text('Mobile/Web')),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'UI/UX & Design Implementation',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'State Management',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Networking & APIs',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Data Persistence ',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Native Integrations ',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Backend & Third party Integration Skills',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.whiteColor),
                        child: const Text('Backend')),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Spring Boot',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Spring security',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Java & OOP Mastery',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'RESTful API Design ',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text("Application Architecture & Design Patterns",style: TextStyle(color: Color(0XFFDADADA))),
                    const Text("Messaging, WebSocket & Realtime Updates",style: TextStyle(color: Color(0XFFDADADA))
                    )

                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.whiteColor),
                        child: const Text('Cloud Computing')),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Spring Boot',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Spring security',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Firebase',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Flutter ',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                  ],
                ),
              ),
               Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.whiteColor),
                        child: const Text('Devops')),
                    const SizedBox(
                      height: 16,
                    ),
                     const Text(
                      'CI/CD Pipelines',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    Text("Version Contro",style: TextStyle(color: Color(0XFFDADADA)),),
                    const Text(
                      'Configuration Management',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Monitoring, Logging & Alerting',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Deployment & Scaling',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Automation & Scripting',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.whiteColor),
                        child: const Text('Non Technical Skills')),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Problem-Solving & Critical Thinking',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Communication',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Collaboration & Teamwork',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Adaptability & Learning Agility ',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                    const Text(
                      'Attention to Detail',
                      style: TextStyle(color: Color(0XFFDADADA)),
                    ),
                  ],
                  // Attention to Detail
                ),
              ),
            ],
          )
          
        ]));
  }
}
