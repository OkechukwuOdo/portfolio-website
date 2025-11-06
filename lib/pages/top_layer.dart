import 'package:flutter/material.dart';
import 'package:portfolio_website/compnents/constnats/constants.dart';
import 'package:portfolio_website/compnents/screen_size.dart';
import 'package:portfolio_website/pages/cv_template.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class TopLayer extends StatelessWidget {
  const TopLayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.all(defaultPadding * 1.5),
      child: ScreenSize.isMobile(context)
          ? mobileTopLayer(context)
          : Row(
              children: [
                Container(
                  width: 220,
                  height: 220,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/image/appstore.png')),
                      shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 58,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Customtext(
                    //   text: "I'm",
                    //   color: AppColors.whiteColor,
                    //   size: 45,
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    const Customtext(
                      text: 'OSMOND OKECHUKWU ODO',
                      size: 45,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Customtext(text: 'JAVA / FLUTTER DEVELOPER'),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.backgoundColor,
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                            onTap: () async {
                              print("clicked download");

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CvTemplate()),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Saved to: CV')),
                              );
                            },
                            child: const Text('DOWNLOAD CV')))
                  ],
                )
              ],
            ),
    );
  }

  Column mobileTopLayer(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 220,
            height: 220,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/image/appstore.png')),
                shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 58,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Customtext(
                text: "I'm",
                color: AppColors.whiteColor,
                size: 45,
              ),
              const SizedBox(
                height: 18,
              ),
              const Customtext(
                text: 'OSMOND OKECHUKWU ODO',
              ),
              const SizedBox(
                height: 18,
              ),
              const Customtext(text: 'JAVA / FLUTTER DEVELOPER/DevOp'),
              const SizedBox(
                height: 18,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.backgoundColor,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(8),
                      child: GestureDetector(
                          onTap: () async {
                            print("clicked download");

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CvTemplate()),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Saved to: CV')),
                            );
                          },
                          child: const Text('DOWNLOAD CV'))))
            ],
          )
        ],
      );
}

Future<void> viewCv() async {}
