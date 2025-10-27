

import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final double value;

  final Function(double) onChanged;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 2,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
      ),
      child: Slider(
        value: widget.value,
        
        min: 100,
        max: 200,
        thumbColor: Colors.pink,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        onChanged: (double newValue) {
          widget.onChanged(newValue);
        },
      ),
    );
  }
}



