import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:portfolio_website/styles/app_colors.dart';

class CvTemplate extends StatefulWidget {
  const CvTemplate({super.key});

  @override
  State<CvTemplate> createState() => _CvTemplateState();
}

class _CvTemplateState extends State<CvTemplate> {
//     final pdfPinchController = PdfController(
//   document: PdfDocument.openAsset('/documents/Osmond-Odo-CV.pdf'),
// );
final pdfPinchController= PdfControllerPinch(
      document: PdfDocument.openAsset('/documents/Osmond-Odo-CV.pdf'),
    );
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("MY CV",style: TextStyle(color: AppColors.whiteColor,),),
        backgroundColor:  AppColors.primaryColor,
      ),
       body: SizedBox(
         width: MediaQuery.of(context).size.width,
         child: PdfViewPinch(
          controller: pdfPinchController,
          backgroundDecoration: const BoxDecoration(color: Colors.white),
          
        ),
        //  child: PdfView(
        //   scrollDirection: Axis.vertical,
        //    controller: pdfPinchController,
        //    renderer: (PdfPage page) => page.render(
        //      width: page.width * 3,
        //      height: page.height * 2,
        //      format: PdfPageImageFormat.jpeg,
        //      backgroundColor: '#FFFFFF',
        //    ),
        //  ),
       )
    );
  }
}