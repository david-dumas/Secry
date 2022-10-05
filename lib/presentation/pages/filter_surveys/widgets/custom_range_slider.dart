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
  late double _startValue;
  late double _endValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _startValue = widget.startValue;
      _endValue = widget.endValue;
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
          values: RangeValues(_startValue, _endValue),
          max: 20,
          divisions: 20,
          labels: RangeLabels(
            _startValue.round().toString(),
            _endValue.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _startValue = values.start;
              _endValue = values.end;
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
