// import 'dart:convert';
//
// import 'package:another_flushbar/flushbar.dart';
// import 'package:another_flushbar/flushbar_route.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// import 'resources/strings.dart';
//
// class Utils {
//   static double averageRating(List<int> rating) {
//     var avgRating = 0;
//     for (int i = 0; i < rating.length; i++) {
//       avgRating = avgRating + rating[i];
//     }
//     return double.parse((avgRating / rating.length).toStringAsFixed(1));
//   }
//
//   //On pressing done from keyboard it should move to the next text field
//   static void fieldFocusChange(
//     BuildContext context,
//     FocusNode currentNode,
//     FocusNode nextNode,
//   ) {
//     currentNode.unfocus();
//     FocusScope.of(context).requestFocus(nextNode);
//   }
//
//   //For showing toast
//   static void toastMessage(String message) {
//     Fluttertoast.showToast(
//         msg: message,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: const Color.fromARGB(137, 12, 10, 10),
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }
//
//   //For showing toast
//   static void toastSuccessMessage(String message) {
//     Fluttertoast.showToast(
//         msg: message,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: const Color.fromARGB(255, 76, 175, 80), // Hijau terang
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }
//
//   static void toastErrorMessage(String message) {
//     Fluttertoast.showToast(
//         msg: message,
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         timeInSecForIosWeb: 1,
//         backgroundColor: const Color.fromARGB(255, 241, 40, 60),
//         textColor: Colors.white,
//         fontSize: 16.0);
//   }
//
//   static void flushBarErrorMessage(String message, BuildContext context) {
//     showFlushbar(
//       context: context,
//       flushbar: Flushbar(
//         borderRadius: BorderRadius.circular(8),
//         titleColor: Colors.white,
//         backgroundColor: Colors.black87,
//         message: message,
//         forwardAnimationCurve: Curves.decelerate,
//         margin: const EdgeInsets.all(15),
//         duration: const Duration(seconds: 3),
//         reverseAnimationCurve: Curves.easeInOut,
//         icon: const Icon(
//           Icons.error,
//           color: Colors.white,
//         ),
//       )..show(context),
//     );
//   }
//
//   static snackBar(String message, BuildContext context) {
//     return ScaffoldMessenger.of(context)
//         .showSnackBar(SnackBar(content: Text(message)));
//   }
//
//   static spacerHeight(double height) {
//     return SizedBox(
//       height: height,
//     );
//   }
//
//   static void showLoaderDialog(BuildContext context) {
//     AlertDialog loaderDialog = AlertDialog(
//       content: WillPopScope(
//         onWillPop: () async => false, // Mencegah pengguna menutup dialog
//         child: const SizedBox(
//           height:
//               100, // Menyesuaikan tinggi konten agar dialog lebih proporsional
//           child: Column(
//             mainAxisAlignment:
//                 MainAxisAlignment.center, // Center secara vertikal
//             children: [
//               CircularProgressIndicator(), // Loader
//               SizedBox(height: 20),
//               Text(Strings.process), // Teks "Please wait..."
//             ],
//           ),
//         ),
//       ),
//     );
//
//     showDialog(
//       context: context,
//       barrierDismissible: false, // Mencegah dialog ditutup dengan tap di luar
//       builder: (BuildContext context) {
//         return loaderDialog;
//       },
//     );
//   }
//
//   static void hideLoaderDialog(BuildContext context) {
//     Navigator.of(context).pop(); // Menutup dialog loader
//   }
// }
//
// Color hexToColor(String? hexString) {
//   if (hexString == null || hexString.isEmpty) {
//     return Colors.transparent; // Jika tidak ada warna, gunakan transparan
//   }
//
//   // Menghilangkan simbol # jika ada
//   hexString = hexString.replaceFirst('#', '');
//
//   // Jika panjang string hex hanya 6 karakter (tanpa alpha), tambahkan FF untuk alpha penuh
//   if (hexString.length == 6) {
//     hexString = 'FF$hexString';
//   }
//
//   // Konversi string hex menjadi integer dan buat Color
//   return Color(int.parse(hexString, radix: 16));
// }
//
// String modelToJson(Object param) {
//   String jsonIn = jsonEncode(param);
//   print('json in $jsonIn');
//   return jsonIn;
// }
