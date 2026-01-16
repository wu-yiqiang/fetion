import 'dart:math';

String generateRandomString(int len) {
  final _random = Random();
  final result = String.fromCharCodes(
      List.generate(len, (index) => _random.nextInt(33) + 89));
  return result;
}
