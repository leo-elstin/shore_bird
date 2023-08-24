import 'package:shorebird_code_push/shorebird_code_push.dart';

class UpdateService {
  final shorebirdCodePush = ShorebirdCodePush();

  Future<int?> currentVersion() async {
    return await shorebirdCodePush.currentPatchNumber();
  }

  Future<bool> updateAvailable() async {
    return await shorebirdCodePush.isNewPatchAvailableForDownload();
  }

  Future downloadUpdate() async {
    return await shorebirdCodePush.downloadUpdateIfAvailable();
  }
}
