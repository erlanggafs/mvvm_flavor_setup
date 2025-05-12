// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:erp360_smart_selling_tools/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// bool toBoolean(String str, [bool strict = false]) {
//   if (strict == true) {
//     return str == '1' || str == 'true';
//   }
//   return str != '0' && str != 'false' && str != '';
// }
//
// String doubletoString(double doub) {
//   RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
//
//   String s = doub.toString().replaceAll(regex, '');
//   return s;
// }
//
// String stringtoDecimal(String s) {
//   return NumberFormat.decimalPattern().format(
//     int.parse(s),
//   );
// }
//
// String decimalToInt(String s) {
//   return s.replaceAll(',', '');
// }
//
// String numberPhone(String numb) {
//   if (numb[0].toString() == "0") {
//     var numbold = numb.replaceFirst("0", "62");
//     return numbold;
//   } else {
//     return "62$numb";
//   }
// }
//
// // bool isInstalled(String packageName) {
// //   bool isInstalled = false;
// //   AppCheck.isAppEnabled(packageName).then((value) => isInstalled = value);
// //   return isInstalled;
// // }
//
// String toBase64(String imagePath) {
//   File file = File(imagePath);
//   Uint8List bytes = file.readAsBytesSync();
//   String base64Image = base64Encode(bytes);
//   return base64Image;
// }
//
// DateTime join(DateTime date, TimeOfDay time) {
//   return DateTime(date.year, date.month, date.day, time.hour, time.minute);
// }
//
// String formatTahun(String tahun) {
//   DateTime dateTime = DateFormat("dd MMM yyyy HH:mm").parse(tahun);
//   return DateFormat('yyyy').format(dateTime).toString();
// }
//
// String formatBulan(String bulan) {
//   DateTime dateTime = DateFormat("dd MMM yyyy HH:mm").parse(bulan);
//   return DateFormat('MM').format(dateTime).toString();
// }
//
// String formatCalendar(String bulan) {
//   var now = DateTime.now();
//   DateTime dateTime = DateFormat("dd MMM yyyy HH:mm").parse(bulan);
//   return dateTime.isBefore(now).toString();
// }
//
// String formatTglDD(String tanggal) {
//   DateTime dateTime = DateFormat("dd MMM yyyy HH:mm").parse(tanggal);
//   return DateFormat('dd').format(dateTime).toString();
// }
//
// String formatMonthIndo(String m) {
//   var month = "";
//   switch (m) {
//     case '01':
//       {
//         month = "Januari";
//       }
//       break;
//     case '02':
//       {
//         month = "Februari";
//       }
//       break;
//     case '03':
//       {
//         month = "Maret";
//       }
//       break;
//     case '04':
//       {
//         month = "April";
//       }
//       break;
//     case '05':
//       {
//         month = "Mei";
//       }
//       break;
//     case '06':
//       {
//         month = "Juni";
//       }
//       break;
//     case '07':
//       {
//         month = "Juli";
//       }
//       break;
//     case '08':
//       {
//         month = "Agustus";
//       }
//       break;
//     case '09':
//       {
//         month = "September";
//       }
//       break;
//     case '10':
//       {
//         month = "Oktober";
//       }
//       break;
//     case '11':
//       {
//         month = "November";
//       }
//       break;
//     case '12':
//       {
//         month = "Desember";
//       }
//       break;
//   }
//   return month;
// }
//
// Color colorGroupingResponse(String groupingResponse) {
//   if (groupingResponse == "Hot") {
//     return hexToColor("#F20E0F");
//   } else if (groupingResponse == "Warm") {
//     return hexToColor("#FF9500");
//   } else if (groupingResponse == "Cold") {
//     return hexToColor("#007AFF");
//   } else if (groupingResponse == "Pending") {
//     return hexToColor("#83C049");
//   } else {
//     return Colors.black87;
//   }
// }
//
// extension DateConversion on String {
//   String formatYear(
//       {String fromFormat = "dd MMM yyyy HH:mm",
//       String toFormat = "dd MMM yy HH:mm"}) {
//     try {
//       // Parse tanggal sesuai format asal
//       DateTime parsedDate = DateFormat(fromFormat).parse(this);
//
//       // Format ulang sesuai format tujuan
//       return DateFormat(toFormat).format(parsedDate);
//     } catch (e) {
//       // Jika parsing gagal, kembalikan string asli
//       return this;
//     }
//   }
// }
//
// extension DateTimeStringExtension on String {
//   String formatAsDateOrTime() {
//     try {
//       // Parsing string ke DateTime
//       final dateTime = DateFormat("dd MMM yyyy HH:mm").parse(this);
//
//       // Mendapatkan tanggal hari ini tanpa waktu
//       final today = DateTime.now();
//       final todayDateOnly = DateTime(today.year, today.month, today.day);
//
//       // Membandingkan tanggal
//       final inputDateOnly =
//           DateTime(dateTime.year, dateTime.month, dateTime.day);
//
//       if (inputDateOnly == todayDateOnly) {
//         // Jika tanggal sama dengan hari ini, return hanya jam
//         return DateFormat("HH:mm").format(dateTime);
//       } else {
//         // Jika bukan hari ini, return format tanggal `dd MMM yy`
//         return DateFormat("dd MMM yy").format(dateTime);
//       }
//     } catch (e) {
//       // Menangani kesalahan parsing
//       return this;
//     }
//   }
// }
