import 'package:flutter/material.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class EducationAndExperince extends StatelessWidget {
  const EducationAndExperince({
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
            text: 'Expericence',
            size: 35,
            color: AppColors.primaryColor,
          ),
          const SizedBox(
            height: 35,
          ),
          SingleChildScrollView(
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Java Backend Engineer'),
                        const Text('Decagon Institute'),
                        RichText(
                          text: const TextSpan(
                              text: "•ACID Principles Implementation: ",
                              children: [
                                TextSpan(
                                    text:
                                        'Implemented OAuth2 and encryption protocols tosignificantly boost application security and protect user data.')
                              ]),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "•Advanced Security Measures: ",
                              children: [
                                TextSpan(
                                    text:
                                        'Applied ACID (Atomicity, Consistency, Isolation,Durability) principles to ensure robust and reliable transaction management, enhancingdata integrity and consistency')
                              ]),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "•KYC Features Development: ",
                              children: [
                                TextSpan(
                                    text:
                                        'Created Know Your Customer (KYC) features to streamlineuser account verification and enhance onboarding processes.')
                              ]),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "•REST API Development: ",
                              children: [
                                TextSpan(
                                    text:
                                        ' Developed REST APIs for seamless integration betweenfrontend and backend systems, improving API response times and overall userexperience')
                              ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 52,
                  ),
                  SizedBox(
                    width: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Java Backend Engineer'),
                        const Text('Decagon Institute'),
                        RichText(
                          text: const TextSpan(
                              text: "•ACID Principles Implementation: ",
                              children: [
                                TextSpan(
                                    text:
                                        'Implemented OAuth2 and encryption protocols tosignificantly boost application security and protect user data.')
                              ]),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "•Advanced Security Measures: ",
                              children: [
                                TextSpan(
                                    text:
                                        'Applied ACID (Atomicity, Consistency, Isolation,Durability) principles to ensure robust and reliable transaction management, enhancingdata integrity and consistency')
                              ]),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "•KYC Features Development: ",
                              children: [
                                TextSpan(
                                    text:
                                        'Created Know Your Customer (KYC) features to streamlineuser account verification and enhance onboarding processes.')
                              ]),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "•REST API Development: ",
                              children: [
                                TextSpan(
                                    text:
                                        ' Developed REST APIs for seamless integration betweenfrontend and backend systems, improving API response times and overall userexperience')
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
