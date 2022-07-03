import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturePlants extends StatefulWidget {
  const FeaturePlants({Key? key}) : super(key: key);

  @override
  _FeaturePlantsState createState() => _FeaturePlantsState();
}

class _FeaturePlantsState extends State<FeaturePlants> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantsCard(
            image: 'assets/images/bottom_img_1.png',
            press: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FeaturePlantsCard(image: 'assets/images/bottom_img_2.png', press: (){}),
                ),
              );
            },
          ),
          FeaturePlantsCard(
            image: 'assets/images/bottom_img_2.png',
            press: (){},
          ),
        ],
      ),
    );
  }
}


class FeaturePlantsCard extends StatelessWidget {
  const FeaturePlantsCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding/2,
            bottom: kDefaultPadding/2
        ),
        width: size.width*0.8,
        height: 185,
        //child: Image.asset(image),
        decoration:new BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: ExactAssetImage(image)
          ),
        ),
      ),
    );
  }
}