import 'dart:io';

import 'package:crypto_app/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'picker_files_macos.dart' as pickerfilesmacos;

Future<void> _displayPickImageDialog(
  BuildContext context,
  ImagePicker _picker,
  OnPickImageCallback onPick,
) async {
  final TextEditingController maxWidthController = TextEditingController();
  final TextEditingController maxHeightController = TextEditingController();
  final TextEditingController qualityController = TextEditingController();
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add optional parameters'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: maxWidthController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                    hintText: 'Enter maxWidth if desired'),
              ),
              TextField(
                controller: maxHeightController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                    hintText: 'Enter maxHeight if desired'),
              ),
              TextField(
                controller: qualityController,
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(hintText: 'Enter quality if desired'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
                child: const Text('PICK'),
                onPressed: () {
                  final double? width = maxWidthController.text.isNotEmpty
                      ? double.parse(maxWidthController.text)
                      : null;
                  final double? height = maxHeightController.text.isNotEmpty
                      ? double.parse(maxHeightController.text)
                      : null;
                  final int? quality = qualityController.text.isNotEmpty
                      ? int.parse(qualityController.text)
                      : null;
                  onPick(width, height, quality);
                  Navigator.of(context).pop();
                }),
          ],
        );
      });
}

Future<Map<String, dynamic>> onCallPicker(
  ImageSource source, {
  required BuildContext context,
  bool isMultiImage = false,
  bool isMedia = false,
}) async {
  Map<String, dynamic> response = {"files": [], "error": Error};
  ImagePicker picker = ImagePicker();

  if (context.mounted) {
    //pick macos image
    if (Platform.isMacOS) {
      response["files"] = await pickerfilesmacos.pickFileMacos();
      print("image picked from macos...");
      return response;
    }

    if (isMultiImage) {
      await _displayPickImageDialog(
        context,
        picker,
        (double? maxWidth, double? maxHeight, int? quality) async {
          try {
            final List<XFile> pickedFileList = isMedia
                ? await picker.pickMultipleMedia(
                    maxWidth: maxWidth,
                    maxHeight: maxHeight,
                    imageQuality: quality,
                  )
                : await picker.pickMultiImage(
                    maxWidth: maxWidth,
                    maxHeight: maxHeight,
                    imageQuality: quality,
                  );
            // setState(() {
            //   _mediaFileList = pickedFileList;
            // });

            response["files"] = pickedFileList;
          } catch (e) {
            // setState(() {
            //   _pickImageError = e;
            // });
            response["error"] = e;
          }
        },
      );
    } else if (isMedia) {
      await _displayPickImageDialog(context, picker,
          (double? maxWidth, double? maxHeight, int? quality) async {
        try {
          final List<XFile> pickedFileList = <XFile>[];
          final XFile? media = await picker.pickMedia(
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            imageQuality: quality,
          );
          if (media != null) {
            pickedFileList.add(media);
            // setState(() {
            //   _mediaFileList = pickedFileList;
            // });

            response["files"] = pickedFileList;
          }
        } catch (e) {
          // setState(() {
          //   _pickImageError = e;
          // });
          response["error"] = e;
        }
      });
    } else {
      await _displayPickImageDialog(context, picker,
          (double? maxWidth, double? maxHeight, int? quality) async {
        try {
          final XFile? pickedFile = await picker.pickImage(
            source: source,
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            imageQuality: quality,
          );
          // setState(() {
          //   _setImageFileListFromFile(pickedFile);
          // });
          response["files"] = [pickedFile];
        } catch (e) {
          // setState(() {
          //   _pickImageError = e;
          // });
          response["error"] = e;
        }
      });
    }
  }

  return response;
}
