import 'package:LiciousAfroDeli/Components/item_image.dart';
import 'package:LiciousAfroDeli/Components/order_button.dart';
import 'package:LiciousAfroDeli/Components/title_price_rating.dart';
import 'package:LiciousAfroDeli/models/product_model.dart';
import 'package:LiciousAfroDeli/values/values.dart';
import 'package:LiciousAfroDeli/widgets/card_tags.dart';
import 'package:LiciousAfroDeli/widgets/ratings_widget.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/constants.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DetailsScreen extends StatefulWidget {
  final FoodProduct detailsOfFood;
  DetailsScreen(this.detailsOfFood);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            color: kPrimaryColor,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[
          IconButton(
            icon: Icon(LineAwesomeIcons.share_square),
            color: kPrimaryColor,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(LineAwesomeIcons.bookmark),
            color: kPrimaryColor,
            onPressed: () {},
          )
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            // margin: const EdgeInsets.only(top: 10),
            height: 250,
            width: size.width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 20,
                  color: Color(0xFFB0CCE1).withOpacity(0.32),
                ),
              ],
            ),
            child: Image.asset(
              widget.detailsOfFood.imagePath,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        widget.detailsOfFood.nameOfFood,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      '\$${widget.detailsOfFood.price}',
                      style: TextStyle(
                        fontFamily: 'Josefin',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Details',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  widget.detailsOfFood.details,
                  style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                ),
              ),
            ],
          ),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          //   child: Column(
          //     children: <Widget>[
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           Row(
          //             children: <Widget>[
          //               Text(
          //                 widget.detailsOfFood.nameOfFood,
          //                 textAlign: TextAlign.left,
          //                 style: Styles.customTitleTextStyle(
          //                   color: AppColors.headingText,
          //                   fontWeight: FontWeight.w600,
          //                   fontSize: 20,
          //                 ),
          //               ),
          //               SizedBox(width: 4.0),
          //               CardTags(
          //                 title: widget.detailsOfFood.categories,
          //                 decoration: BoxDecoration(
          //                   gradient: Gradients.secondaryGradient,
          //                   boxShadow: [
          //                     Shadows.secondaryShadow,
          //                   ],
          //                   borderRadius:
          //                       BorderRadius.all(Radius.circular(8.0)),
          //                 ),
          //               ),
          //               Spacer(flex: 1),
          //               // Ratings(widget.detailsOfFood.ratings)
          //             ],
          //           ),
          //           SizedBox(height: 16.0),
          //           Text(
          //             widget.detailsOfFood.description,
          //             style: TextStyle(),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
