import 'package:flutter/material.dart';
import 'package:rebulit_bmi_calc/models/bmi_input_model.dart';
import 'package:rebulit_bmi_calc/widgets/custom_contanier.dart';
import 'package:rebulit_bmi_calc/widgets/custom_slider.dart';
import 'package:rebulit_bmi_calc/widgets/section_title.dart';
import 'package:rebulit_bmi_calc/widgets/value_text.dart';

class HeightSelectionItem extends StatefulWidget {
  const HeightSelectionItem({super.key, required this.bmiInputModel});
  final BmiInputModel bmiInputModel;

  @override
  State<HeightSelectionItem> createState() => _HeightSelectionItemState();
}

class _HeightSelectionItemState extends State<HeightSelectionItem> {
  double height = 174;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          SectionTitle(label: 'HEIGHT'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueText(text: height.round().toString(), ),
              Text('cm',style: TextStyle(color: Colors.grey,fontSize: 18),)
            ],
          ),
          CustomSlider(
            value: height,
            onChanged: (double newValue) {
              setState(() {
                height = newValue;
                widget.bmiInputModel.height = newValue / 100;
              });
            },
          ),
        ],
      ),
    );
  }
}
