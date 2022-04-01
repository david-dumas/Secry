class ScreenSizeHelper {
  bool isSmallDevice({required double deviceWidth}) {
    if (deviceWidth <= 360) {
      return true;
    } else {
      return false;
    }
  }
}
