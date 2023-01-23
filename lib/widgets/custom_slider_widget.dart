import 'package:flutter/material.dart';

class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: const Color(0xff24465e),
        inactiveTrackColor: const Color.fromARGB(124, 36, 70, 94),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
        thumbColor: const Color(0xff24465e),
        overlayColor: const Color.fromARGB(84, 36, 70, 94),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        activeTickMarkColor: const Color(0xff24465e),
        inactiveTickMarkColor: const Color.fromARGB(131, 36, 70, 94),
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: const Color(0xff24465e),
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
        ),
      ),
      child: child,
    );
  }
}
