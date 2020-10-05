part of values;

class Styles {
  static const TextStyle titleTextStyleWithSecondaryTextColor = TextStyle(
    color: AppColors.secondaryText,
    fontFamily: StringConst.FONT_FAMILY,
    fontWeight: FontWeight.w700,
    fontSize: 40.0,
  );

  static TextStyle customTitleTextStyle({
    Color color = AppColors.secondaryText,
    String fontFamily = StringConst.FONT_FAMILY,
    FontWeight fontWeight = FontWeight.w700,
    double fontSize = 40.0,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
    );
  }

  static const TextStyle normalTextStyle = TextStyle(
    color: AppColors.secondaryText,
    fontFamily: StringConst.FONT_FAMILY,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
  );

  static const TextStyle foodyBiteTitleTextStyle = TextStyle(
    color: AppColors.headingText,
    fontFamily: StringConst.FONT_FAMILY,
    fontWeight: FontWeight.w400,
    fontSize: 20.0,
  );

  static const TextStyle foodyBiteSubtitleTextStyle = TextStyle(
    color: AppColors.accentText,
    fontFamily: StringConst.FONT_FAMILY,
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
  );

  static TextStyle customNormalTextStyle({
    Color color = AppColors.secondaryText,
    String fontFamily = StringConst.FONT_FAMILY,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 16.0,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
    );
  }

  static const TextStyle mediumTextStyle = TextStyle(
    color: kPrimaryColor,
    fontFamily: StringConst.FONT_FAMILY,
    fontWeight: FontWeight.w400,
    fontSize: 20.0,
  );

  static TextStyle customMediumTextStyle({
    Color color = kPrimaryColor,
    String fontFamily = StringConst.FONT_FAMILY,
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 20.0,
    double letterSpacing = 0,
  }) {
    return TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing);
  }
}
