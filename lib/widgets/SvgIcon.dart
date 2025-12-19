import 'package:fetion/widgets/MouseRegions.dart';
import 'package:flutter_svg/svg.dart';

SvgIcon({required String name, size = 20, required Function onTap}) {
  return MouseRegions(
    child: SvgPicture.asset('assets/svg/$name.svg', width: 20),
    onPress: () => onTap(),
  );
}
