import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:file_selector/file_selector.dart';
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
                    child: Image(
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
                              // child: const Icon(
                              //   Icons.edit_note_outlined,
                              //   size: 100,
                              // ),
                              child: Column(
                                children: [
                                  // IconButton(
                                  //     onPressed: _selectFoto,
                                  //     icon: const Icon(
                                  //         Icons.photo_size_select_actual)),
                                  // IconButton(
                                  //     onPressed: _makeFoto,
                                  //     icon: const Icon(Icons.camera_alt)),
                                  IconButton(
                                      // onPressed: () => _onImageButtonPressed(
                                      //     ImageSource.gallery,
                                      //     context: context),
                                      icon: const Icon(Icons.camera_alt),
                                      onPressed: () => () {}),
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
}
