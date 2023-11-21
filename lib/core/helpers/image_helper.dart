import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Widget _verifyFotoUrl(String stringUrl) {
  return (stringUrl == '')
      ? const Image(
          image: AssetImage('assets/no-image.png'), //
          height: 300,
          fit: BoxFit.cover,
        )
      : FadeInImage(
          height: 300,
          image: NetworkImage(stringUrl),
          placeholder: const AssetImage('assets/loading.gif'),
          fadeInDuration: const Duration(milliseconds: 2000),
        );
}

//  Widget _showPhoto(User user ,XFile foto) {
//     return (foto == null)
//         ? _verifyFotoUrl(productModel)
//         : Image.file(
//       File(foto!.path),
//       height: 300,
//       fit: BoxFit.cover,
//     );
//   }