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
          height: 20,
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
                      'Flutter Developer',
                      style: GoogleFonts.belanosima(fontSize: 18),
                    ),
                    Text('Sharashell Tech. Limited', style: GoogleFonts.acme(fontSize: 17)),
                    const SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(text: "• ", children: [
                        TextSpan(
                            style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Designed dynamic user interfaces with responsive layouts and custom widgets to enhance user engagement.')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Implemented product search, filtering, and recommendation features using REST APIs and Firebase.')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Used Provider for state management to maintain optimal app performance and scalability..')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Conducted unit and widget testing,reducing post-release bugs by 25%')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Collaborated with the backend team to integrate APIs for order management, user authentication, and inventory updates.')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Optimized app performance,reducing startup time by 45% and improving overall app responsiveness..')
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
                    Text('Teranium co', style: GoogleFonts.acme(fontSize: 17)),
                    const SizedBox(
                      height: 4,
                    ),
                    RichText(
                      text: TextSpan(text: "• ", children: [
                        TextSpan(
                            style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Designed Software solution by analyzing system performance standard by increasing performance efficiency by 27%')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style:  GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Automated test and debugging protocols resulting in a 40% improvement in the system operational efficiency')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Establish, maintained and developed an extensive test coverage from new features which reduced the number of bugs by 13% monthly.')
                      ]),
                    ),
                    RichText(
                      text:  TextSpan(text: "• ", children: [
                        TextSpan(
                          style: GoogleFonts.poppins(wordSpacing: 3,fontSize: 14),
                            text:
                                'Refined existing code and executed automated testing routines to improve scalability by and performance by 85%')
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
