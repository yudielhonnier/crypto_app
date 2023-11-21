import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/resources/no_params.dart';
import 'package:crypto_app/core/usecases/usecase.dart';
import 'package:crypto_app/features/profile/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:image_picker/image_picker.dart';

class PickImageUseCase implements Usecase<XFile, NoParams> {
  final UserRepository userRepository;

  PickImageUseCase(this.userRepository);
  @override
  Future<Either<Failure, XFile>> call(NoParams params) =>
      userRepository.pickImage();
}
