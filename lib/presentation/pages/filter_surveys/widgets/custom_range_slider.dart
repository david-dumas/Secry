import 'package:flutter/material.dart';
import 'package:secry/constants.dart';

class CustomRangeSlider extends StatefulWidget {
  final double startValue;
  final double endValue;

  const CustomRangeSlider({Key? key, required this.startValue, required this.endValue}) : super(key: key);

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  late RangeValues _rangeValues;

  @override
  void initState() {
    super.initState();
    setState(() {
      _rangeValues = RangeValues(widget.startValue, widget.endValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
            trackHeight: 2.0, overlayShape: SliderComponentShape.noOverlay, rangeThumbShape: CustomRangeSliderShape()),
        child: RangeSlider(
          values: _rangeValues,
          max: widget.endValue,
          divisions: widget.endValue.toInt(),
          labels: RangeLabels(
            _rangeValues.start.round().toString(),
            _rangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _rangeValues = values;
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
