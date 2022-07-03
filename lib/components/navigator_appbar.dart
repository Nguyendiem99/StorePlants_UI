import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/constants.dart';

class NavigationAppbar extends StatelessWidget {
  const NavigationAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(
        left: kDefaultPadding*2,
        right: kDefaultPadding*2,
        bottom: kDefaultPadding,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.38),
                blurRadius: 35,
                offset: Offset(0,-10)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}
