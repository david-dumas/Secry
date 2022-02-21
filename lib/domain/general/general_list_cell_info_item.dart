import 'package:flutter_svg/flutter_svg.dart';

class GeneralListCellInfoItem {
  final String title;
  final String description;
  final int timeIndication;
  DrawableRoot? svg;

  GeneralListCellInfoItem(
      {required this.title, required this.description, required this.timeIndication, this.svg = null});
}
