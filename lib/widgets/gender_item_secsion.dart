import 'package:flutter/material.dart';
import 'package:rebulit_bmi_calc/widgets/custom_contanier.dart';
import 'package:rebulit_bmi_calc/widgets/section_title.dart';

class GenderItemSection extends StatelessWidget {
  const GenderItemSection({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });
  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: color,
      child: Column(
        children: [
          Icon(icon, size: 110, color: Colors.white),

       SectionTitle(label: label),   
        ],
      ),
    );
  }
}



          
