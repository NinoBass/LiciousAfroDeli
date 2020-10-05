import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  const TextFieldContainer({Key key, this.child, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      height: size.height * 0.07,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
