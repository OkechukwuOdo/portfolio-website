import 'package:flutter/material.dart';
import 'package:portfolio_website/compnents/constnats/constants.dart';
import 'package:portfolio_website/compnents/screen_size.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints:const BoxConstraints(maxWidth: 121),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Customtext(
              text: 'About Me', size: 35, color: AppColors.primaryColor),
          ScreenSize.isMobile(context)
              ? smallAboutMe(context)
              : Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(10),
                    //   child: Container(
                    //     color: AppColors.primaryColor,
                    //     width: 250,
                    //     height: 250,
                    //   ),
                    // ),
      
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Customtext(
                              color: AppColors.blackColor,
                              text:
                                  'Experienced Flutter and Java developer with expertise in creating scalable and user-friendly mobile applications for Android and iOS. Strong background in object-oriented programming and back-end development with Java, seamlessly integrating with front-end interfaces. Proven track record of leading projects through the entire software life-cycle, delivering high-quality solutions, and collaborating effectively with teams. Experience in Agile and Scrum methodologies. Passionate about continuous learning and staying updated with the latest industry trends to deliver cutting-edge solutions.'),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const SizedBox(
                          // width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PersonalDetails(
                                title: 'Name:  ',
                                value: 'Osmond Odo',
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              PersonalDetails(
                                title: 'Highest Degree:  ',
                                value: 'B.Eng',
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              PersonalDetails(
                                title: 'Phone:  ',
                                value: '+234 7037950506',
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              PersonalDetails(
                                title: 'Email:  ',
                                value: 'osmondokey@gmail.com',
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              PersonalDetails(
                                title: 'Experince:  ',
                                value: '3 Years',
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              PersonalDetails(
                                title: 'Address:  ',
                                value: 'No 1C Udi lane, Asata Enugu. Enugu State',
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: AppColors.primaryColor,
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ],
                )
        ]),
      ),
    );
  }

  Column smallAboutMe(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: defaultPadding,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: AppColors.primaryColor,
              width: 250,
              height: 250,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                // width: d,
                child: Customtext(
                    color: AppColors.blackColor,
                    text:
                        'Experienced Flutter and Java developer with expertise in creating scalable and user-friendly mobile applications for Android and iOS. Strong background in object-oriented programming and back-end development with Java, seamlessly integrating with front-end interfaces. Proven track record of leading projects through the entire software life-cycle, delivering high-quality solutions, and collaborating effectively with teams. Experience in Agile and Scrum methodologies. Passionate about continuous learning and staying updated with the latest industry trends to deliver cutting-edge solutions.'),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                // width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalDetails(
                      title: 'Name:  ',
                      value: 'Osmond Odo',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PersonalDetails(
                      title: 'Highest Degree:  ',
                      value: 'B.Eng',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PersonalDetails(
                      title: 'Phone:  ',
                      value: '+234 7037950506',
                    ),
                    PersonalDetails(
                      title: 'Email:  ',
                      value: 'osmondokey@gmail.com',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PersonalDetails(
                      title: 'Experince:  ',
                      value: '3 Years',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    PersonalDetails(
                      title: 'Address:  ',
                      value: 'No 1C Udi lane, Asata Enugu. Enugu State',
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      );
}

class PersonalDetails extends StatelessWidget {
  final String title;
  final String value;
  const PersonalDetails({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: title,
            style: const TextStyle(fontSize: 20, color: AppColors.primaryColor),
            children: [
          TextSpan(
              style: const TextStyle(fontSize: 18, color: AppColors.blackColor),
              text: value)
        ]));
  }
}
