import 'dart:io';

import 'package:crypto_app/core/constants/constants.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/helpers/camera_delegate.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

import '../constants/typedef_monads.dart';
import 'picker_files_macos.dart' as pickermacos;

var logger = Logger();

Future<XFileMonad> _pickFileFromMack(source, picker) async {
  try {
    XFile? file;
    if (source == ImageSource.camera) {
      logger.i("picking single file from macos camera ... ");
      file = await MyCameraDelegate().takePhoto();
      if (file != null) return Right(file);
    } else {
      logger.i("picking single file from macos device ... ");
      file = await pickermacos.pickFileMacos();
      if (file != null) return Right(file);
    }
  } catch (e) {
    logger.i("han error has ocurred picking single file from macos  ... ");
    return Left(PickerFileError(error: e));
  }
  return Left(UnknowFailure());
}

Future<XFileMonad> _pickFromOtherDevices(source, context, picker) async {
  try {
    XFile? pickedFile;
    await _displayPickImageDialog(context, picker,
        (double? maxWidth, double? maxHeight, int? quality) async {
      logger.i("picking single file from device  ... ");

      pickedFile = await picker.pickImage(
        source: source,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        imageQuality: quality,
      );
    });
    if (pickedFile != null) return Right(pickedFile!);
  } catch (e) {
    logger.i("han error has ocurred picking single file from device  ... ");
    return Left(PickerFileError(error: e));
  }
  return Left(UnknowFailure());
}

Future<XFileMonad> onCallPicker(
  ImageSource source, {
  required BuildContext context,
}) async {
  ImagePicker picker = ImagePicker();

  if (context.mounted) {
    if (Platform.isMacOS) {
      return await _pickFileFromMack(source, picker);
    }
    return await _pickFromOtherDevices(source, context, picker);
  }
  return Left(UnknowFailure());
}
