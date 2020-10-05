import 'package:LiciousAfroDeli/constants.dart';
import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/values/values.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LiciousAfroDeliCard extends StatefulWidget {
  final String price;
  final String rating;
  final String imagePath;
  final String nameOfFood;
  final String category;
  final String description;
  final GestureTapCallback onTap;
  final bool isThereStatus;
  final bool isThereRatings;
  final double tagRadius;
  final double width;
  final double cardHeight;
  final double imageHeight;
  final double ratingsAndPriceCardElevation;

  LiciousAfroDeliCard({
    this.price,
    this.rating = "4.5",
    this.imagePath,
    this.nameOfFood,
    this.category,
    this.description,
    this.width = 280,
    this.cardHeight = 210.0,
    this.imageHeight = 150.0,
    this.tagRadius = 8.0,
    this.onTap,
    this.isThereStatus = true,
    this.isThereRatings = true,
    this.ratingsAndPriceCardElevation = 8.0,
  });

  @override
  _LiciousAfroDeliCardState createState() => _LiciousAfroDeliCardState();
}

class _LiciousAfroDeliCardState extends State<LiciousAfroDeliCard> {
  bool _bookmarked = false;
  List bookmarks = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: size.height * 0.3,
        child: Card(
          shadowColor: Color(0xFFB0CCE1).withOpacity(0.32),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        widget.imagePath,
                        width: MediaQuery.of(context).size.width,
                        height: widget.imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                widget.nameOfFood,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: 'Josefin Sans',
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 4),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: Text(
                                    widget.description,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      // fontFamily: 'Josefin',
                                      // color: kPrimaryColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 16.0,
                right: 16.0,
                top: 8.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Card(
                      shadowColor: Color(0xFFB0CCE1).withOpacity(0.32),
                      elevation: widget.ratingsAndPriceCardElevation,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 5),
                        child: Text(
                          '\$${widget.price}',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: 'Josefin',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    widget.isThereRatings
                        ? Card(
                            shadowColor: Color(0xFFB0CCE1).withOpacity(0.32),
                            elevation: widget.ratingsAndPriceCardElevation,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 9.0, right: 9.3, top: 5.5, bottom: 4.5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    ImagePath.starIcon,
                                    height: 10,
                                    width: 10,
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    widget.rating,
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontFamily: 'Josefin',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
              Positioned(
                top: (widget.cardHeight / 2) + 13,
                left: widget.width - 65,
                child: Container(
                  height: 60,
                  width: 60,
                  child: GestureDetector(
                    onTap: () {
                      if (_bookmarked == true)
                        setState(() {
                          _bookmarked = false;
                        });
                      else
                        setState(() {
                          _bookmarked = true;
                        });
                    },
                    child: Card(
                      shadowColor: Color(0xFFB0CCE1).withOpacity(0.32),
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Icon(
                        LineAwesomeIcons.bookmark,
                        color: _bookmarked ? kPrimaryColor : null,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
