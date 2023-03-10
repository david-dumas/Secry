import 'package:flutter/material.dart';

// BaseUrl
const baseUrl = "https://secryapi.azurewebsites.net";

// TODO Delete
const temporaryPostmanBaseUrl = "https://10535ad9-1804-4207-b556-54f9e7572e48.mock.pstmn.io";
const temporaryPostmanGetGroupdForHomepageUrl = "https://e46a14dc-e806-4540-b22e-4567300546ad.mock.pstmn.io";
const temporaryPostmanPrivateChatsUrl = "https://e6e670c2-7eb3-4bae-81e4-0ecebaa88385.mock.pstmn.io";
const temporaryPostmanPrivateSurveysUrl = "https://413f4f84-f2a1-41f7-a154-43d6a09af11a.mock.pstmn.io";
const temporaryPostmanGetUsersForCreateNewGroup = "https://b45c710f-f287-487b-8f85-fc63a088a546.mock.pstmn.io";

const defaultPageSize = 15;

// Most used color(s)
const kPrimaryColor = Color(0xFF3794FC);

const appIconColorBlue1 = Color(0xFFEDF5FF);
const appIconColorBlue2 = Color(0xFFD6EBFF);
const appIconColorBlue3 = Color(0xFFA9D1FF);
const appIconColorBlue4 = Color(0xFF8CC2FF);
const appIconColorBlue5 = Color(0xFF53A4FF);
const appIconColorBlue6 = Color(0xFF3794FC);

// Colors for tabbar and separators
const kBottomMenuUnselectedColor = Color(0xFFB9BEBC);
const kLineSeparatorColor = Color(0xFFDEE5EF);

const cancelColor = Color(0xFFE90000);

// Colors for buttons and input field
const kWhiteButtonBorderColor = Color(0xFFDEE5EF);
const kWhiteInputFieldBorderStyle = Color(0xFFD7D7D7);

const searchBarBackgroundColor = Color(0xFFEEEEEF);
const searchBarClearButtonColor = Color(0xFF8E8E92);

// Gray tints
const globalBlack = Color(0xFF000000);
const kDarkGrayTextColor = Color(0xFF3F3F3F);
const kDarkGray = Color(0xFF4F4F4F);
const kMediumGrayExtraDark = Color(0xFF717171);
const kMediumGrayV2 = Color(0xFF979797);
const kMediumGray = Color(0xFFB3B9BC);
const kLightGray = Color(0xFFF4F4F4);
const globalWhite = Color(0xFFFFFFFF);
const cancelButtonGrayWhite = Color(0XFFF2F2F2);

// General spacing
const Widget verticalSafetyScrollOffset = SizedBox(height: 50.0);
const verticalSafetyScrollOffsetHeight = 50.0;

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
const pagePaddingZeroTop = EdgeInsets.only(left: 20, right: 20, bottom: 32);
const pagePaddingAllSides = EdgeInsets.only(top: 20, right: 20, bottom: 32, left: 20);

// Button radius
const kButtonRadiusXxs = 8.0;
const kButtonRadiusXs = 12.0;
const kButtonRadiusSmall = 16.0;
const kButtonRadiusMedium = 20.0;
const kButtonRadiusLarge = 24.0;
const kButtonRadiusXl = 32.0;

// Button heights
const kButtonHeightSmall = 44.0;
const kButtonHeightMedium = 50.0;
const kButtonHeightLarge = 60.0;

// Font sizes
const fontSizeXxs = 9.0;
const fontSizeXs = 11.0;
const fontSizeSmall = 12.0;
const fontSizeMedium = 16.0;
const fontSizeLarge = 18.0;
const fontSizeXl = 21.0;
const fontSizeXxl = 24.0;

// Margins
const marginXxs = 4.0;
const marginXs = 8.0;
const marginSmall = 12.0;
const marginMedium = 16.0;
const marginLarge = 24.0;
const marginXl = 32.0;

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

const validationMinimumPasswordLength = 6;
