import 'package:flutter/material.dart';
class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
         label,
         style: TextStyle(color: Colors.grey, fontSize: 18),
       );
  }
}

          