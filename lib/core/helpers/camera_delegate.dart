import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

class MyCameraDelegate extends ImagePickerCameraDelegate {
  final _picker = ImagePicker();
  @override
  Future<XFile?> takePhoto(
      {ImagePickerCameraDelegateOptions options =
          const ImagePickerCameraDelegateOptions()}) async {
    return _takeAPhoto(options.preferredCameraDevice);
  }

  Future<XFile?> _takeAPhoto(
    CameraDevice device,
  ) async {
    final fotopicked = (await _picker.pickImage(
        preferredCameraDevice: device, source: ImageSource.camera));
    print("fotopicked");
    return fotopicked;
  }

  @override
  Future<XFile?> takeVideo(
      {ImagePickerCameraDelegateOptions options =
          const ImagePickerCameraDelegateOptions()}) {
    // TODO: implement takeVideo
    throw UnimplementedError();
  }
}

void setUpCameraDelegate() {
  final ImagePickerPlatform instance = ImagePickerPlatform.instance;
  if (instance is CameraDelegatingImagePickerPlatform) {
    instance.cameraDelegate = MyCameraDelegate();
  }
}
