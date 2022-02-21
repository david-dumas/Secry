import 'package:flutter_svg/flutter_svg.dart';

class GeneralListCellInfoItem {
  final String id;
  final String title;
  final String description;
  final String timeIndication;
  DrawableRoot? svg;

  GeneralListCellInfoItem(
      {required this.id,
      required this.title,
      required this.description,
      required this.timeIndication,
      this.svg = null});
}
