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
    hoatName,
    getway,
    ipv4,
    ipv6,
    macAddr,
    '255.255.255.250',
    false,
    avatar: DefaultAvatar
  );
  // UpdateOwner();
}
