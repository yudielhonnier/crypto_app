import 'dart:convert';
import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:translator/translator.dart';

extension BuildContextX on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => MediaQuery.of(this).size;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;

  ThemeData get theme => Theme.of(this);

  // T  provider<T extends Object?>(){
  //   return Provider.of(this);
  // }

  NavigatorState get navigator1 => Navigator.of(this);

  GoRouter get goRouter => GoRouter.of(this);

  ScaffoldFeatureController showCustomSnackBar({
    required String message,
    Color? backgroundColor,
    String? title,
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          elevation: 4,
          backgroundColor: backgroundColor,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(20),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null) ...[
                Text(
                  title,
                  textScaleFactor: 1.6,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
              ],
              Text(message),
            ],
          ),
        ),
      );
}

extension StringX on String {
  String get capitalize => '${this[0].toUpperCase()}${substring(1)}';

  //development tool
  void prettyPrintJson() {
    const JsonDecoder decoder = JsonDecoder();
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    final dynamic object = decoder.convert(this);
    final dynamic prettyString = encoder.convert(object);
    prettyString.split('\n').forEach((dynamic element) => log(element));
  }

  String get digitsOnly => replaceAll(RegExp(r'[^0-9]'), '');

  int get toInt {
    return digitsOnly.isEmpty ? 0 : int.parse(digitsOnly);
  }

  String detectLanguage() {
    String languageCodes = 'en';

    final RegExp persian = RegExp(r'^[\u0600-\u06FF]+');
    final RegExp english = RegExp(r'^[a-zA-Z]+');
    final RegExp arabic = RegExp(r'^[\u0621-\u064A]+');
    final RegExp chinese = RegExp(r'^[\u4E00-\u9FFF]+');
    final RegExp japanese = RegExp(r'^[\u3040-\u30FF]+');
    final RegExp korean = RegExp(r'^[\uAC00-\uD7AF]+');
    final RegExp ukrainian = RegExp(r'^[\u0400-\u04FF\u0500-\u052F]+');
    final RegExp russian = RegExp(r'^[\u0400-\u04FF]+');
    final RegExp italian = RegExp(r'^[\u00C0-\u017F]+');
    final RegExp french = RegExp(r'^[\u00C0-\u017F]+');
    final RegExp spanish = RegExp(
        r'[\u00C0-\u024F\u1E00-\u1EFF\u2C60-\u2C7F\uA720-\uA7FF\u1D00-\u1D7F]+');

    if (persian.hasMatch(this)) languageCodes = 'fa';
    if (english.hasMatch(this)) languageCodes = 'en';
    if (arabic.hasMatch(this)) languageCodes = 'ar';
    if (chinese.hasMatch(this)) languageCodes = 'zh';
    if (japanese.hasMatch(this)) languageCodes = 'ja';
    if (korean.hasMatch(this)) languageCodes = 'ko';
    if (russian.hasMatch(this)) languageCodes = 'ru';
    if (ukrainian.hasMatch(this)) languageCodes = 'uk';
    if (italian.hasMatch(this)) languageCodes = 'it';
    if (french.hasMatch(this)) languageCodes = 'fr';
    if (spanish.hasMatch(this)) languageCodes = 'es';

    return languageCodes;
  }

  bool isEnglish() {
    return detectLanguage() == 'en';
  }

  Future<String> translate() async {
    try {
      final translator = GoogleTranslator();
      var t = await translator.translate(this, to: 'en');

      return t.source;
    } catch (e) {
      return this;
    }
  }
}

extension StringNullableX on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension EnumX on Enum {
  String get capitalizedName => name.capitalize;
}

extension MapX on Map {
  //development tool
  void prettyPrintJson() {
    final printableMap = Map.from(this);

    printableMap.forEach((key, value) {
      //process DateTime instances
      if (value is DateTime) printableMap[key] = value.toIso8601String();
    });

    json.encode(printableMap).prettyPrintJson();
  }
}

//graphql tool extension and typedef

typedef ResponseData = Map<String, dynamic>;

typedef GetErrorFunction = List<Map<String, dynamic>> Function(
    Map<String, dynamic> data);

extension ListX on List? {
  List<T> mapToNotNullElementList<T extends Object?>() {
    return this
            ?.where((event) => event != null)
            .map<T>((event) => event!)
            .toList() ??
        <T>[];
  }

  num highInDouble() {
    if (this is List<double> && this!.isNotEmpty) {
      return this!.reduce((value, element) =>
          (value as double) > (element as double) ? value : element);
    }
    return -1;
  }

  num lowInDouble() {
    if (this is List<num> && this!.isNotEmpty) {
      return this?.reduce((value, element) =>
          (value as double) < (element as double) ? value : element);
    }
    return -1;
  }
}

extension ColorX on Color {
  Color ramdomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }
}

extension DateTimeX on DateTime {
  String hms() {
    DateFormat df = DateFormat.Hms();
    return df.format(this);
  }

  ///transform the dateTime into
  ///
  ///unix DateTime format in seconds
  int toUnixDateTime() {
    return toUtc().millisecondsSinceEpoch ~/ 1000;
  }
}
