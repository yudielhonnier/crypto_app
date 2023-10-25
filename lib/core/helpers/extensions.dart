import 'dart:convert';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';

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
}
