import 'package:image_picker/image_picker.dart';

class User {
  final String uid;
  final String username;
  final String imageUrl;
  const User(this.uid, {required this.username, required this.imageUrl});
}
