import 'package:flutter/cupertino.dart';

class EmptyState extends StatelessWidget {
  final String title;
  final String description;
  final IconData? icon;
  final CrossAxisAlignment crossAxisAlignment;

  const EmptyState(
      {Key? key,
      required this.title,
      required this.description,
      this.icon = null,
      this.crossAxisAlignment = CrossAxisAlignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: crossAxisAlignment == CrossAxisAlignment.center ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          description,
          textAlign: crossAxisAlignment == CrossAxisAlignment.center ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 12),
        Visibility(
          visible: icon != null,
          child: Icon(
            icon,
            size: 24,
          ),
        ),
      ],
    );
  }
}
