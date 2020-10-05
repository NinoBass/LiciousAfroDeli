import 'package:LiciousAfroDeli/values/values.dart';
import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 6.0),
      padding:
          EdgeInsets.symmetric(horizontal: 25, vertical: size.height * 0.004),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5.0),
          border: InputBorder.none,
          icon: Image.asset(
            ImagePath.searchIconBlue,
            color: ksecondaryColor,
          ),
          hintText: "Search Meals Here",
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),
    );
  }
}
