import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/compnents/constnats/constants.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class Experince extends StatelessWidget {
  const Experince({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          // height: 200,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                width: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Java/Flutter Engineer',
                      style: GoogleFonts.belanosima(fontSize: 18),
                    ),
                    Text('Sharashell Tech. Limited', style: GoogleFonts.acme()),
                    const SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                style: GoogleFonts.poppins(),
                                text:
                                    'Designed software solution by analyzing system performance standard by increasing performace efficiency by 28%')
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                text:
                                    'Planned, tracked and managed 100+ deliverable on short term sprint and long term software development')
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                text:
                                    'Developed and executed 300+ test procedure for software component.')
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                text:
                                    ' Developed REST APIs for seamless integration betweenfrontend and backend systems, improving API response times and overall userexperience')
                          ]),
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   width: 52,
              // ),
              const SizedBox(
                height: 18,
              ),
                SizedBox(
                width: 700,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Java Engineer',
                      style: GoogleFonts.belanosima(fontSize: 18),
                    ),
                    Text('Teranium co', style: GoogleFonts.acme()),
                    const SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                style: GoogleFonts.poppins(),
                                text:
                                    'Designed and implemented scalable RESTful APIs for e-commerce web based application')
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                text:
                                    'Participated in code reviews, ensuring adherence to coding standards and best practices')
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                text:
                                    'Collaborated with frontend teams to deliver full-stack solutions for web pplications.')
                          ]),
                    ),
                    RichText(
                      text: const TextSpan(
                          text: "• ",
                          children: [
                            TextSpan(
                                text:
                                    ' Developed REST APIs for seamless integration between frontend and backend systems, improving API response times and overall userexperience')
                          ]),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   width: 700,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         'Java Backend Engineer',
              //         style: GoogleFonts.belanosima(),
              //       ),
              //       Text('Teranium co', style: GoogleFonts.acme()),
              //       const SizedBox(
              //         height: 4,
              //       ),
              //       RichText(
              //         text: const TextSpan(
              //             text: "• ACID Principles Implementation: ",
              //             children: [
              //               TextSpan(
              //                   text:
              //                       'Designed software solution by analyzing system performance standard by increasing performace efficiency by 28%')
              //             ]),
              //       ),
              //       RichText(
              //         text: const TextSpan(
              //             text: "•Advanced Security Measures: ",
              //             children: [
              //               TextSpan(
              //                   text:
              //                       'Applied ACID (Atomicity, Consistency, Isolation,Durability) principles to ensure robust and reliable transaction management, enhancingdata integrity and consistency')
              //             ]),
              //       ),
              //       RichText(
              //         text: const TextSpan(
              //             text: "•KYC Features Development: ",
              //             children: [
              //               TextSpan(
              //                   text:
              //                       'Created Know Your Customer (KYC) features to streamlineuser account verification and enhance onboarding processes.')
              //             ]),
              //       ),
              //       RichText(
              //         text: const TextSpan(
              //             text: "•REST API Development: ",
              //             children: [
              //               TextSpan(
              //                   text:
              //                       ' Developed REST APIs for seamless integration betweenfrontend and backend systems, improving API response times and overall userexperience')
              //             ]),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
