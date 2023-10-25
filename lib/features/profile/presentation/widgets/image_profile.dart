import 'dart:io';

import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/core/helpers/image_picker_handler.dart'
    as pickerHandler;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageProfile extends StatefulWidget {
  const ImageProfile({
    super.key,
    required this.image,
  });
  final ImageProvider image;

  @override
  State<ImageProfile> createState() => _ImageProfileState();
}

class _ImageProfileState extends State<ImageProfile> {
  bool editVisible = false;

  XFile? foto;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) => _toggleEdit(),
        onExit: (event) => _toggleEdit(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Expanded(
              child: Stack(children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: foto != null
                        ? Image.file(File(foto!.path))
                        : Image(
                            width: context.width / 2,
                            image: widget.image,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                editVisible
                    ? Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: context.width / 2,
                              height: double.infinity,
                              color: darkTheme.primaryColor.withOpacity(0.2),
                              child: Column(
                                children: [
                                  IconButton(
                                      onPressed: _pickPhotoFromCamera,
                                      icon: const Icon(Icons.camera_alt)),
                                  IconButton(
                                      icon: const Icon(
                                          Icons.photo_size_select_actual),
                                      onPressed: _pickPhotoFromDevice),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            // child: const Icon(
            //   Icons.edit_note_outlined,
            //   size: 100,
            // ),
            const Text(
              'UserName',
              style: TextStyle(fontSize: 20),
            ),
          ]),
        ));
  }

  void _toggleEdit() {
    setState(() {
      editVisible = !editVisible;
    });
  }

  void _pickPhotoFromDevice() async {
    var response = await pickerHandler.onCallPicker(
      ImageSource.camera,
      context: context,
      isMedia: true,
    );

    final List fotopicked = response["files"];
    if (fotopicked.isNotEmpty) {
      print("foto $fotopicked");
      setState(() {
        foto = fotopicked[0];
      });
    }
  }

  void _pickPhotoFromCamera() async {}
}
