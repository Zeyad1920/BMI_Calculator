import 'package:flutter/material.dart';
import 'package:rebulit_bmi_calc/models/bmi_input_model.dart';
import 'package:rebulit_bmi_calc/widgets/counter_card.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CounterCard(
            label: 'WEIGHT',
            defaultValue: 70,
            onchanged: (value) {
              bmiInputModel.weight = value;
            },
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: CounterCard(
            label: 'AGE',
            defaultValue: 25,
            onchanged: (value) {
              bmiInputModel.age = value;
            },
          ),
        ),
      ],
    );
  }
}
