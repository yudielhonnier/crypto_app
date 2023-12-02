import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastService {
  static late FToast _fToast;

  //SUCCESSFULL
  static void showToastSuccessfull(
    BuildContext context, {
    String? message,
  }) {
    Future.delayed(Duration.zero, () async {
      _fToast.showToast(
        child: _buildToastWidget(message ?? 'Success', Colors.green),
        gravity: ToastGravity.BOTTOM,
        toastDuration: const Duration(seconds: 3),
      );
    });
  }

  //WARNING
  static void showToastWarning(
    BuildContext context, {
    String? message,
  }) {
    Future.delayed(Duration.zero, () async {
      _fToast.showToast(
        child: _buildToastWidget(message ?? 'Warning', Colors.orange[400]!),
        gravity: ToastGravity.BOTTOM,
        toastDuration: const Duration(seconds: 2),
      );
    });
  }

  //ERROR
  static void showToastError(
    BuildContext context, {
    String? message,
  }) {
    Future.delayed(Duration.zero, () async {
      _fToast.showToast(
        child: _buildToastWidget(message ?? 'Error', Colors.red[400]!),
        gravity: ToastGravity.BOTTOM,
        toastDuration: const Duration(seconds: 2),
      );
    });
  }

  static Widget _buildToastWidget(String message, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: color,
      ),
      child: Text(message),
    );
  }

  static void initialize(BuildContext context) {
    _fToast = FToast();
    _fToast.init(context);
  }
}
