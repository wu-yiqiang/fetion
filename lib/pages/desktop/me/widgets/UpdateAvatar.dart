import 'dart:io';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/utils/utils.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/widgets/MouseRegions.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';

class UpdateAvatar extends StatefulWidget {
  const UpdateAvatar({super.key});
  @override
  State<UpdateAvatar> createState() => _UpdateAvatar();
}

class _UpdateAvatar extends State<UpdateAvatar> {
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Stack(
        children: [
          Obx(() {
            return Avatar(
              size: 100,
              image: settingController.setting.value.avatar!,
            );
          }),
          Positioned(
            child: MouseRegions(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                child: Icon(WindowsIcons.camera, size: 18),
                color: white200,
              ),
              onPress: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.image,
                  // allowCompression: true,
                  compressionQuality: 80,
                );
                if (result != null) {
                  File file = File(result.files.single.path!);
                  String path = file.path;
                  String base64Data = await fileToBase64(path);
                  settingController.updateSetting('avatar', base64Data);
                }
              },
            ),
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
