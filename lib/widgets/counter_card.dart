import 'package:flutter/material.dart';
import 'package:rebulit_bmi_calc/widgets/custom_contanier.dart';
import 'package:rebulit_bmi_calc/widgets/section_title.dart';
import 'package:rebulit_bmi_calc/widgets/value_text.dart';

class CounterCard extends StatefulWidget {
  final String label;
  final int defaultValue;
  final Function(int) onchanged;

  
  const CounterCard({
    super.key,
    required this.label,
    required this.defaultValue,
    required this.onchanged,
  });

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    if (value == 0) {
      value = widget.defaultValue;
    }
    return CustomContainer(
      child: Column(
        children: [
          SectionTitle(label: widget.label),
          ValueText(text: value.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(icon: Icons.remove, onPressed: () {
                value--;
                widget.onchanged(value);
                setState(() {});
              }),
              SizedBox(width: 10),
              CustomButton(icon: Icons.add, onPressed: () {
                value++;
                widget.onchanged(value);
                setState(() {});
              }),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: Color(0xff4B4E5F),
        radius: 30,
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: Colors.white, size: 36),
        ),
      ),
    );
  }
}
