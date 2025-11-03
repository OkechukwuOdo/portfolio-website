import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/compnents/app_bar_title.dart';
import 'package:portfolio_website/compnents/constnats/constants.dart';
import 'package:portfolio_website/compnents/screen_size.dart';
import 'package:portfolio_website/pages/about_me.dart';
import 'package:portfolio_website/pages/experince.dart';
import 'package:portfolio_website/pages/footer.dart';
import 'package:portfolio_website/pages/my_portfolio.dart';
import 'package:portfolio_website/pages/my_skills.dart';
import 'package:portfolio_website/pages/top_layer.dart';
import 'package:portfolio_website/styles/app_colors.dart';
import 'package:portfolio_website/widgets/customText.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final skafoldKey = GlobalKey<ScaffoldState>();

  final ScrollController _scrollController = ScrollController();

  final GlobalKey _targetKey = GlobalKey();
  void _scrollToTarget() {
    final context = _targetKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar.kAppBar(context),
      key: skafoldKey,
      backgroundColor: AppColors.backgoundColor,
      endDrawer: ScreenSize.isDesktop(context) ? null : const Drawer(),
      body: ListView(
        children: [
          const TopLayer(),
          const SizedBox(
            height: 45,
          ),
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              child: const AboutMe(),
            ),
          ),
          // const SizedBox(
          //   height: 45,
          // ),
          // const AboutMe(),
          const SizedBox(
            height: 55,
          ),
          Column(
            children: [
              // const Customtext(
              //   text: "Education",
              //   color: AppColors.primaryColor,
              //   size: 35,
              // ),const SizedBox(
              //   height: 12,
              // ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(defaultPadding),
                decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    border: Border(
                        top:
                            BorderSide(width: 2, color: AppColors.primaryColor),
                        bottom: BorderSide(
                            width: 2, color: AppColors.primaryColor))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Customtext(
                      text: "Education",
                      color: AppColors.primaryColor,
                      size: 35,
                    ),
                    SizedBox(
                      height: defaultPadding / 1.6,
                    ),
                    Text("Micheal Okpara University of Agriculture Umudike"),
                    Text("November 2013 - May 2018"),
                    Text(
                        "Bachelor of Engineering in Computer Engineering and Engineering Technology"),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: kMaxWidth),
              // width: 123,
              child: const Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Experince(),
                  // SizedBox(
                  //   height: 32,
                  // ),
                  // const EducationAndExperince(),
                  SizedBox(
                    height: 65,
                  ),
                  MySkills(),
                  SizedBox(
                    height: 65,
                  ),
                  MyPortfolio(),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 32,
          // ),
          // const Experince(),
          // // SizedBox(
          // //   height: 32,
          // // ),
          // // const EducationAndExperince(),
          // const SizedBox(
          //   height: 45,
          // ),
          // const MySkills(),
          // const SizedBox(
          //   height: 55,
          // ),
          // const MyPortfolio(),
          const SizedBox(
            height: 45,
          ),
          const Footer()
        ],
      ),
    );
  }
}

// class Experince extends StatelessWidget {
//   const Experince({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Customtext(
//           text: 'Expericence',
//           size: 35,
//           color: AppColors.primaryColor,
//         ),
//         const SizedBox(
//           height: 35,
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//           // height: 200,
//           child: ListView(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             children: [
//               SizedBox(
//                 width: 700,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Java Backend Engineer',
//                       style: GoogleFonts.poppins(),
//                     ),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     Text('Decagon Institute', style: GoogleFonts.acme()),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     RichText(
//                       text: TextSpan(
//                           text: "•ACID Principles Implementation: ",
//                           children: [
//                             TextSpan(
//                                 style: GoogleFonts.poppins(),
//                                 text:
//                                     'Implemented OAuth2 and encryption protocols tosignificantly boost application security and protect user data.')
//                           ]),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                           text: "•Advanced Security Measures: ",
//                           children: [
//                             TextSpan(
//                                 text:
//                                     'Applied ACID (Atomicity, Consistency, Isolation,Durability) principles to ensure robust and reliable transaction management, enhancingdata integrity and consistency')
//                           ]),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                           text: "•KYC Features Development: ",
//                           children: [
//                             TextSpan(
//                                 text:
//                                     'Created Know Your Customer (KYC) features to streamlineuser account verification and enhance onboarding processes.')
//                           ]),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                           text: "•REST API Development: ",
//                           children: [
//                             TextSpan(
//                                 text:
//                                     ' Developed REST APIs for seamless integration betweenfrontend and backend systems, improving API response times and overall userexperience')
//                           ]),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 width: 52,
//               ),
//               const SizedBox(
//                 height: 18,
//               ),
//               SizedBox(
//                 width: 700,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Java Backend Engineer',
//                       style: GoogleFonts.poppins(),
//                     ),
//                     Text('Decagon Institute', style: GoogleFonts.acme()),
//                     RichText(
//                       text: const TextSpan(
//                           text: "• ACID Principles Implementation: ",
//                           children: [
//                             TextSpan(
//                                 text:
//                                     'Implemented OAuth2 and encryption protocols tosignificantly boost application security and protect user data.')
//                           ]),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                           text: "•Advanced Security Measures: ",
//                           children: [
//                             TextSpan(
//                                 text:
//                                     'Applied ACID (Atomicity, Consistency, Isolation,Durability) principles to ensure robust and reliable transaction management, enhancingdata integrity and consistency')
//                           ]),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                           text: "•KYC Features Development: ",
//                           children: [
//                             TextSpan(
//                                 text:
//                                     'Created Know Your Customer (KYC) features to streamlineuser account verification and enhance onboarding processes.')
//                           ]),
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                           text: "•REST API Development: ",
//                           children: [
//                             TextSpan(
//                                 text:
//                                     ' Developed REST APIs for seamless integration betweenfrontend and backend systems, improving API response times and overall userexperience')
//                           ]),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
