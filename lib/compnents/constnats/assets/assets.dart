
import 'package:flutter/services.dart';
import 'dart:html' as html;
import 'package:flutter/services.dart' show rootBundle;

class MyAssets {
  static const String myCv='assets/documents/Osmond-Odo-CV.pdf';
  static const String myCvPath='documents/Osmond-Odo-CV.pdf';
    static const String filename='currentCv';
}

Future<void> copyAssetFileToDownloadFolder() async {
   final bytes = await rootBundle.load(MyAssets.myCv);
  final blob = html.Blob([bytes.buffer.asUint8List()]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", MyAssets.filename)
    ..click();
  html.Url.revokeObjectUrl(url);
  // final byteData = await rootBundle.load(MyAssets.myCv);
  // final directory = await getApplicationDocumentsDirectory();
  // print(directory);

  // final file = File('${directory.path}/${MyAssets.myCvPath}');
  // await file.writeAsBytes(byteData.buffer.asUint8List());

  // return file.path;
}
// void openFile() async {
//   final filePath = await copyAssetFileToDownloadFolder();
//   OpenFile.open(filePath);
// }