import 'package:flutter/material.dart';
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
                mainAxisExtent: 410,
                crossAxisSpacing: defaultPadding * 2,
                mainAxisSpacing: defaultPadding),
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 2,
            //   mainAxisExtent: 220,
            //   crossAxisSpacing: 8.0,
            //   mainAxisSpacing: 8.0,
            //   childAspectRatio: 1.0,
            // ),
            children: const [
              ProjectItem(),
              ProjectItem(),
              ProjectItem(),
              ProjectItem(),
              // ProjectItem(),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
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
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Title"),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.primaryColor,
                    ),
                    child: const Customtext(
                      text: "View",
                      size: 12,
                    )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
