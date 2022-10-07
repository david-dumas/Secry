import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class CustomRangeSlider extends StatelessWidget {
  final double startValue;
  final double endValue;
  final double initialStartValue;
  final double initialEndValue;
  final Function(double lowerBound, double upperCount) handleChange;

  const CustomRangeSlider({Key? key, required this.startValue, required this.endValue, required this.initialStartValue, required this.initialEndValue, required this.handleChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
            trackHeight: 2.0, overlayShape: SliderComponentShape.noOverlay, rangeThumbShape: CustomRangeSliderShape()),
        child: RangeSlider(
          values: RangeValues(startValue, endValue),
          min: initialStartValue,
          max: initialEndValue,
          divisions: initialEndValue.toInt(),
          labels: RangeLabels(
            startValue.round().toString(),
            endValue.round().toString(),
          ),
          onChanged: (RangeValues values) {
            handleChange(values.start, values.end);
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
      ..addOval(Rect.fromCircle(center: center, radius: radius - 2))
      ..fillType = PathFillType.evenOdd;

    Path pathTwo = Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius))
      ..addOval(Rect.fromCircle(center: center, radius: radius - 15))
      ..fillType = PathFillType.evenOdd;

    canvas.drawPath(pathTwo, Paint()..color = globalWhite);
    canvas.drawPath(path, Paint()..color = ringColor);
  }
}
