import 'package:flutter/material.dart';
import 'package:untitled/screens/details/details_screen.dart';

import '../../../constants.dart';
class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetailsScreen())
              );

            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: () {

            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width*0.4,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding /2,
          bottom: kDefaultPadding * 1.5,
        ),
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                    )
                  ]
              ),
              child: Row(
                children: <Widget>[
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)
                            )
                        )
                      ]
                  )
                  ),
                  Spacer(),
                  Text("\$$price",
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: kPrimaryColor
                    ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}