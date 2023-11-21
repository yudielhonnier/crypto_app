import 'dart:convert';

import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/profile/data/models/user_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:crypto_app/core/helpers/image_picker_handler.dart'
    // ignore: library_prefixes
    as pickerHandler;

abstract class UserLocalDataSource {
  ///Gets the cached [UserModel]  wich was gotten the last time
  ///
  ///Throws a [CachedException] if no cached data is present.
  Future<UserModel> getUser();

  Future<void> cacheUser(UserModel user);

  Future<Either<Failure, XFile>> pickImage();
}

// ignore: constant_identifier_names
const CACHED_USER = 'CACHED_USER';

class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserLocalDataSourceImpl({required this.sharedPreferences});

  Future<void> cacheUsers(List<UserModel> users) {
    // TODO: implement cacheUsers
    return Future(() => null);
  }

  @override
  Future<void> cacheUser(UserModel user) {
    // TODO: implement cacheUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUser() {
    final jsonString = sharedPreferences.getString(CACHED_USER);
    if (jsonString != null) {
      return Future.value(UserModel.fromJson(json.decode(jsonString ?? '')));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<Either<Failure, XFile>> pickImage() async {
    final image = await pickerHandler.onCallPicker(
      ImageSource.gallery,
    );
    return Future(() => image);

    // return Future(() => XFile(''));
  }
}
