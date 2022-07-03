import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,

  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding /2),
      height: 57,
      width: 57,
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                blurRadius: 20,
                offset: Offset(-15,-15)
            ),
            BoxShadow(
                offset: Offset(0,15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22)
            ),
          ]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}