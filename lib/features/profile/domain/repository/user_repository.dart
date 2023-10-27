import 'package:crypto_app/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';

abstract class UserRepository {
  Future<Either<Failure, XFile>> pickImage();
}
