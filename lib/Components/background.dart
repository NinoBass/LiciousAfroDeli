import 'package:LiciousAfroDeli/values/values.dart';
import 'package:LiciousAfroDeli/widgets/dark_overlay.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0.0,
            child: Image.asset(
              ImagePath.boiledEggs,
              height: heightOfScreen,
              width: widthOfScreen,
              colorBlendMode: BlendMode.saturation,
              fit: BoxFit.cover,
            ),
          ),
          DarkOverLay(),
          child,
        ],
      ),
    );
  }
}
