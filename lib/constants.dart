import 'package:flutter/material.dart';

// Most used color(s)
const kPrimaryColor = Color(0xFF3794FC);

// Colors for tabbar and separators
const kBottomMenuUnselectedColor = Color(0xFFB9BEBC);
const kLineSeparatorColor = Color(0xFFDEE5EF);

// Colors for buttons and input field
const kWhiteButtonBorderColor = Color(0xFFDEE5EF);
const kWhiteInputFieldBorderStyle = Color(0xFFD7D7D7);

// Gray tints
const globalBlack = Color(0xFF000000);
const kDarkGrayTextColor = Color(0xFF3F3F3F);
const kDarkGray = Color(0xFF4F4F4F);
const kMediumGray = Color(0xFFB3B9BC);
const kLightGray = Color(0xFFF4F4F4);
const globalWhite = Color(0xFFFFFFFF);

// General spacing
const Widget verticalSafetyScrollOffset = SizedBox(height: 50.0);

// Horizontal Spacing
const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceRegular = SizedBox(width: 18.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);

// Vertical Spacing
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceRegular = SizedBox(height: 18.0);
const Widget verticalSpaceMedium = SizedBox(height: 25);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
const Widget verticalSpaceMassive = SizedBox(height: 120.0);

// Padding
const pagePadding = EdgeInsets.only(left: 20, right: 20, bottom: 32);

// Button radius
const kButtonRadiusXxs = BorderRadius.all(Radius.circular(8));
const kButtonRadiusXs = BorderRadius.all(Radius.circular(12));
const kButtonRadiusSmall = BorderRadius.all(Radius.circular(16));
const kButtonRadiusMedium = BorderRadius.all(Radius.circular(20));
const kButtonRadiusLarge = BorderRadius.all(Radius.circular(24));
const kButtonRadiusXl = BorderRadius.all(Radius.circular(32));

// Button heights
const kButtonHeightSmall = 44.0;
const kButtonHeightMedium = 50.0;
const kButtonHeightLarge = 60.0;

// Text styles
const kWalkthroughTitleTextStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 21.0,
);
const kWalkthroughDescriptionTextStyle = TextStyle(
  color: kDarkGrayTextColor,
  fontSize: 16.0,
);
const mainContentTextStyleMedium = TextStyle(
  fontSize: 16,
  color: globalBlack,
);

const buttonTextStyleMedium = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
