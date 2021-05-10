import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key key, this.text, this.press}) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}
