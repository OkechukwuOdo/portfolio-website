import 'package:flutter/material.dart';
import 'package:portfolio_website/compnents/screen_size.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class KAppBar {
  static kAppBar(BuildContext context) => AppBar(
        surfaceTintColor: AppColors.backgoundColor,
        title: ScreenSize.isDesktop(context)
            ? ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  // height: 50,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                     
                      Container(
                        height: 38,
                        width: 38,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon/ooo-tech.png'))
                            // shape: BoxShape.circle,
                            // color: AppColors.primaryColor
                            ),
                      ),
                      // // const SizedBox(
                      //   width: 6,
                      // ),
                      // const Customtext(
                      //   text: 'OS',
                      //   size: 32,
                      //   color: AppColors.blackColor,
                      // ),
                      const Spacer(),
                      const Customtext(
                        text: 'Home',
                        color: AppColors.blackColor,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Customtext(
                        text: 'Skills',
                        color: AppColors.blackColor,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Customtext(
                        text: 'Project',
                        color: AppColors.blackColor,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Customtext(
                        text: 'Contact',
                        color: AppColors.blackColor,
                      ),
                    ],
                  ),
                ),
              )
            : Container(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 38,
                        width: 38,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon/ooo-tech.png'))
                            // shape: BoxShape.circle,
                            // color: AppColors.primaryColor
                            ),
                      ),
                    // GestureDetector(onTap: () {}, child: const Icon(Icons.menu))
                  ],
                ),
              ),
      );
}
