import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({Key? key}) : super(key: key);

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(0, 20);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
            trackHeight: 2.0, overlayShape: SliderComponentShape.noOverlay, rangeThumbShape: CustomRangeSliderShape()),
        child: RangeSlider(
          values: _currentRangeValues,
          max: 20,
          divisions: 20,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ),
    );
  }
}

class CustomRangeSliderShape extends RangeSliderThumbShape {
  final double radius;
  final Color ringColor;

  CustomRangeSliderShape({this.radius = 15.0, this.ringColor = kPrimaryColor});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(radius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      bool? isDiscrete,
      bool? isEnabled,
      bool? isOnTop,
      TextDirection? textDirection,
      required SliderThemeData sliderTheme,
      Thumb? thumb,
      bool? isPressed}) {
    final Canvas canvas = context.canvas;

    Path path = Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius))
      ..addOval(Rect.fromCircle(center: center, radius: radius - 3))
      ..fillType = PathFillType.evenOdd;

    Path pathTwo = Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius))
      ..addOval(Rect.fromCircle(center: center, radius: radius - 15))
      ..fillType = PathFillType.evenOdd;

    canvas.drawPath(pathTwo, Paint()..color = globalWhite);
    canvas.drawPath(path, Paint()..color = ringColor);
  }
}
