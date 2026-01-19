import 'dart:convert';
import 'dart:io';
import 'dart:math';

String generateRandomString(int len) {
  final _random = Random();
  final result = String.fromCharCodes(
      List.generate(len, (index) => _random.nextInt(33) + 89));
  return result;
}


Future<String> fileToBase64(String filePath) async {
  try {
    // 1. 检查文件是否存在
    final file = File(filePath);
    if (!await file.exists()) {
      throw Exception('文件不存在: $filePath');
    }

    // 2. 读取文件为字节数组 (Uint8List)
    final bytes = await file.readAsBytes();

    // 3. 转换为 Base64
    final base64String = base64Encode(bytes);

    return base64String;
  } catch (e) {
    rethrow; // 或处理错误
  }
}
