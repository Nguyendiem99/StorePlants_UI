import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/screens/home/components/feature_plants.dart';
import 'package:untitled/screens/home/components/header_with_search_box.dart';
import 'package:untitled/screens/home/components/recomend_plants.dart';
import 'package:untitled/screens/home/components/title_with_more_btn.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: (){}),
          FeaturePlants(),
        ],
      ),
    );
  }
}






