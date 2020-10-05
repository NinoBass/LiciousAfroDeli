import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class Discount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers & Discounts'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 15,horizontal: 18),
        width: double.infinity,
        height: 166,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment(1.0, 0.5),
              end: Alignment(0.5, 1.0),
              colors: [
                Color(0xFFFF962D).withOpacity(0.7),
                kPrimaryColor.withOpacity(0.7),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "Get Discount of \n",
                          style: TextStyle(fontSize: 16),
                        ),
                        TextSpan(
                          text: "30% \n",
                          style: TextStyle(
                            fontSize: 43,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "at ",
                          style: TextStyle(fontSize: 10),
                        ),
                        TextSpan(
                          text: "LiciousAfroDeli \n",
                          style: TextStyle(fontSize: 16),
                        ),
                        TextSpan(
                          text: "on your first order & Instant cashback",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
