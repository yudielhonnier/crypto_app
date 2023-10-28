import 'dart:io';

import 'package:crypto_app/config/themes/theme_constants.dart';
import 'package:crypto_app/core/bloc/base_bloc_state.dart';
import 'package:crypto_app/core/constants/constants.dart';
import 'package:crypto_app/core/helpers/extensions.dart';
import 'package:crypto_app/core/helpers/image_picker_handler.dart'
    as pickerHandler;
import 'package:crypto_app/features/profile/data/models/user_model.dart';
import 'package:crypto_app/features/profile/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            Expanded(child:
                BlocBuilder<UserBloc, BaseBlocState<UserState, UserModel>>(
                    builder: (BuildContext context, baseState) {
              return baseState.when(
                  init: (user) {
                    return Text(user != null ? user.username : 'hello  world');
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  next: (pageState) => _processPageState(pageState, context),
                  failure: (failure) => Center(
                        child: Text("Something went wrong: ${failure.message}"),
                      ));

              // if (state is baseState. ) {
              //   return ;
              // } else if (state is Loaded) {

              // }
            })),
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

  Stack _processPageState(UserState pageState, BuildContext context) {
    return pageState.when(
      photoLoaded: (photo) => Stack(children: [
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
                              icon: const Icon(Icons.photo_size_select_actual),
                              onPressed: _pickPhotoFromDevice),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ]),
    );
  }

  void _toggleEdit() {
    setState(() {
      editVisible = !editVisible;
    });
  }

  void _pickPhotoFromDevice() async {
    //todo return a image
    // var response = [];

    // final List fotopicked = response["files"];
    // if (fotopicked.isNotEmpty) {
    //   print("foto $fotopicked");
    //   setState(() {
    //     foto = fotopicked[0];
    //   });
    // }
  }
  void _pickPhotoFromCamera() async {
    //todo return a image
    // var response = [];

    // final List fotopicked = response["files"];
    // if (fotopicked.isNotEmpty) {
    //   print("foto $fotopicked");
    //   setState(() {
    //     foto = fotopicked[0];
    //   });
    // }
  }
}
