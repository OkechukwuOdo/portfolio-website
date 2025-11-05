import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/compnents/constnats/constants.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Customtext(
            text: "PROJECTS",
            color: AppColors.primaryColor,
            size: 30,
          ),
          const SizedBox(
            height: 22,
          ),
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 320,
                mainAxisExtent: 500,
                crossAxisSpacing: defaultPadding * 2,
                mainAxisSpacing: defaultPadding),
            children: const [
              ProjectItem(
                title: 'School Website',
                description:
                    'A beautiful and responsive Flutter web-based school website that highlights the school’s values, achievements, and programs. It provides visitors with easy access to admission details, news updates, and contact information giving the school a professional online presence',
                // image: null,
              ),
              ProjectItem(
                title: 'School Portal',
                description:
                    'A modern Flutter web-based school portal that brings learning and administration together in one place. Students can easily access their classes, grades, and assignments, while teachers manage attendance, upload materials, and communicate with learners all from an intuitive, fast, and responsive web experience',
                // image: null,
              ),
              ProjectItem(
                title: 'School ERP',
                description:
                    'A powerful school ERP solution designed to simplify academic and administrative management. From admissions to finance and HR, it gives school owners and administrators full control and visibility into daily operations all from one connected platform built with modern technologies',
                // image: null,
              ),
              ProjectItem(
                title: 'School Management System',
                description:
                    'A powerful Java backend built with Spring Boot and MongoDB that drives the entire school ecosystem from the website to the ERP. It delivers high performance, strong security, and real-time connectivity to ensure seamless experiences for students, teachers, and administrators. Designed for scalability and efficiency, it keeps every school operation connected under one intelligent platform',
                // image: null,
              ),

              // ProjectItem(),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final Widget? image;
  const ProjectItem({
    super.key,
    required this.title,
    required this.description,
     this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.acme(fontSize: 17)),
                const SizedBox(
                  height: 8,
                ),
                Text(
                    style: GoogleFonts.poppins(wordSpacing: 3, fontSize: 13),
                    description),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.primaryColor,
                    ),
                    child: const Customtext(
                      text: "View",
                      size: 12,
                    )),
                // const SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
