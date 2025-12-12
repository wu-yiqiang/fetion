import 'package:fetion/widgets/InkWells.dart';
import 'package:flutter_svg/svg.dart';

SvgIcon({required String name, size = 20, required Function onTap}) {
  return InkWells(
    child: SvgPicture.asset('assets/svg/$name.svg', width: 20),
    onPress: () => onTap(),
  );
}
