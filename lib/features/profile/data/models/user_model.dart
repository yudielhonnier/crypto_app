import 'package:crypto_app/features/profile/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel extends User with _$UserModel {
  const factory UserModel(
      {required String uid,
      required String username,
      required String imageUrl}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  static const mockUserModel =
      UserModel(uid: "1", username: "username", imageUrl: "");
}
