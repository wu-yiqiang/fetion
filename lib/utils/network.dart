import 'dart:io';
import 'package:fetion/common/const.dart';

getInterfaces() async {
  final interfaces = await NetworkInterface.list();
  return interfaces;
}


String getLocalMacAddr() {
  return '';
}

String getLocalHostName() {
  final hostName = Platform.localHostname.isNotEmpty ? Platform.localHostname : defaultHostName;
  return hostName;
}

Future<String> getLocalIpv4Addr() async {
  final interfaces = await getInterfaces();
  for (var interface in interfaces) {
    for (var addr in interface.addresses) {
      if (addr.type == InternetAddressType.IPv4 && !addr.isLoopback) {
        return addr.address;
      }
    }
  }
  return '';
}


Future<String> getLocalGatewayAddr() async {
  return '';
}

Future<String> getLocalIpv6Addr() async {
  final interfaces = await getInterfaces();
  for (final interface in interfaces) {
    for (final address in interface.addresses) {
      if (address.type == InternetAddressType.IPv6 && !address.isLoopback) {
        return address.address;
      }
    }
  }
  return '';
}
