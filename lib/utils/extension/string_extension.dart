import 'package:html/parser.dart';

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

String htmlToString(String htmlContent) {
  // Convert HTML sscript to normal text and  number to ²
  htmlContent = htmlContent.replaceAllMapped(
    RegExp(r'<sup>\s*<small>\s*2\s*</small>\s*</sup>', caseSensitive: false),
    (match) => '²',
  );

  final document = parse(htmlContent);
  return document.body?.text ?? "";
}
