import 'package:file_selector/file_selector.dart';

Future<XFile?> pickFileMacos() async {
  const XTypeGroup typeGroup = XTypeGroup(
    label: 'images',
    extensions: <String>['jpg', 'png'],
  );
  final XFile? file =
      await openFile(acceptedTypeGroups: <XTypeGroup>[typeGroup]);

  return file;
}

Future<List<XFile?>> pickListFilesMacos() async {
  const XTypeGroup jpgsTypeGroup = XTypeGroup(
    label: 'JPEGs',
    extensions: <String>['jpg', 'jpeg'],
  );
  const XTypeGroup pngTypeGroup = XTypeGroup(
    label: 'PNGs',
    extensions: <String>['png'],
  );
  final List<XFile> files = await openFiles(acceptedTypeGroups: <XTypeGroup>[
    jpgsTypeGroup,
    pngTypeGroup,
  ]);
  return files;
}
