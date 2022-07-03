import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/screens/details/components/icon_card.dart';

import '../../../constants.dart';
class ImageandIcon extends StatelessWidget {
  const ImageandIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height*0.8,
        child: Row(
          children: <Widget>[
            Expanded(child: Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding*2),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                  ),
                  Spacer(),
                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/icon_2.svg"),
                  IconCard(icon: "assets/icons/icon_3.svg"),
                  IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            ),
            ),
            Container(
              height: size.height*0.8,
              width: size.width*0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.36)
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
