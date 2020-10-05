import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/Components/search_box.dart';
import 'package:LiciousAfroDeli/home/components/category_list.dart';
import 'package:LiciousAfroDeli/home/components/discount_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // var heightOfScreen = MediaQuery.of(context).size.height;
    // var widthOfScreen = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SearchBox(
              onChanged: (value) {},
            ),
            CategoryList(),
            // ItemList(),
            DiscountCard(),
          ],
        ),
      ),
    );
  }
}
