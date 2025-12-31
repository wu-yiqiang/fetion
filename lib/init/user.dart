import 'dart:math';
import 'package:fetion/common/const.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:fetion/utils/network.dart';

initUser() async {
  final random = Random();
  late String NumberStr = random.nextInt(100000000).toString();
  late String hoatName = getLocalHostName();
  String ipv4 = await getLocalIpv4Addr();
  String ipv6 = await getLocalIpv6Addr();
  String getway = await getLocalGatewayAddr();
  String macAddr = getLocalMacAddr();
  late final user = User(
    UserId,
    NickNamePrefix + NumberStr,
    false,
    'A8:41:F4:1C:C2:EA',
    "?sdsd",
    '192.168.1.122',
    'fe80::ff7:db62:8113:635d%18',
    '255.255.255.250',
  );
  // UpdateOwner();
}
