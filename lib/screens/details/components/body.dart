import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/details/components/icon_card.dart';
import 'package:untitled/screens/details/components/image_and_icon.dart';
import 'package:untitled/screens/details/components/title_and_price.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageandIcon(size: size),
          TitleAndPrice(),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: size.width/2,
                    height: 84,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        )
                      ),
                        onPressed: (){},
                        child: Text("Buy Now",style: TextStyle(fontSize: 20),),color: Colors.teal)),
              ),
              Padding(
                padding:EdgeInsets.only(bottom: 20) ,
                child: SizedBox(
                    width: size.width/2,
                    height: 84,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20,
                                ),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)
                            )
                        ),
                        onPressed: (){},
                        child: Text("Decreption",style: TextStyle(fontSize: 20),),color: Colors.white)),
              )
            ],
          )
        ],
      ),
    );
  }
}





