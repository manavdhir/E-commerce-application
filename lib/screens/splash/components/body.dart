import 'package:ecommerceapp/components/default_button.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/screens/splash/components/splashContent.dart';
import 'package:ecommerceapp/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image":
          "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/splash_1.png?raw=true"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image":
          "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/splash_2.png?raw=true"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image":
          "https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/blob/master/assets/images/splash_3.png?raw=true"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    title: splashData[index]["text"],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index)),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      DefaultButton(
                        text: "Countinue",
                        press: () {},
                      ),
                      Spacer()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0XFFD8D8D8),
          borderRadius: BorderRadius.circular(4)),
    );
  }
}
