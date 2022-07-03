import 'package:flutter/material.dart';

import '../../../constants.dart';
class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text:"Angelica\n",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: kTextColor,fontWeight: FontWeight.bold
                    ),
                  ),
                  TextSpan(
                      text:"Rusia".toUpperCase(),
                      style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w300,color: kPrimaryColor
                      )
                  ),
                ]
            ),
            ),
            Spacer(),
            Text("\$400",style: Theme.of(context).textTheme.headline5!.copyWith(
                color: kTextColor,fontWeight: FontWeight.bold
            ))
          ],
        )
    );
  }
}