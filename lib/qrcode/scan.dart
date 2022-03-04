// import 'package:barcode_scan2/model/scan_result.dart';
// import 'package:barcode_scan2/platform_wrapper.dart';
// import 'package:flutter/material.dart';

// class Scan extends StatefulWidget {
//   const Scan({Key? key}) : super(key: key);

//   @override
//   _ScanState createState() => _ScanState();
// }

// class _ScanState extends State<Scan> {
//   String qrResult = "Not yet Scanned";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Scan",
//           style: TextStyle(fontSize: 22),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               "RESULT",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             Text(
//               qrResult,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             FlatButton(
//               padding: const EdgeInsets.all(15.0),
//               child: Text(
//                 "SCAN QR CODE",
//                 style: TextStyle(fontSize: 18),
//               ),
//               onPressed: () async {
//                 ScanResult scaning = await BarcodeScanner.scan();
//                 setState(() {
//                   qrResult = scaning as String;
//                 });
//               },
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular((20.0)),
//                 side: BorderSide(color: Colors.blue, width: 3.0),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
