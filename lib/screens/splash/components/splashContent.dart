import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.image, this.title}) : super(key: key);

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Column(
          children: [
            Spacer(),
            Text(
              'TOKOTO',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 2,
            ),
            Image.network(
              image,
              height: getProportionateScreenHeight(265),
              width: getProportionateScreenWidth(235),
            )
          ],
        ));
  }
}
