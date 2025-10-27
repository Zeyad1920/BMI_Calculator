import 'package:flutter/material.dart';
import 'package:rebulit_bmi_calc/models/bmi_input_model.dart';
import 'package:rebulit_bmi_calc/widgets/gender_item_secsion.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key , required this.bmiInputModel});
  final BmiInputModel bmiInputModel;


  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
   
  bool isMaleSelected = true;
  Color activeColor = Color(0xff04061D);
  Color inactiveColor = Color(0xff17172F);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                
                isMaleSelected = true;
                widget.bmiInputModel.gender = "Male";
                setState(() {});
              },
              child: GenderItemSection(
                icon: Icons.male,
                label: 'MALE',
                color: isMaleSelected ? activeColor : inactiveColor,
              ),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: GestureDetector(
              onTap: () {
                isMaleSelected = false;
                widget.bmiInputModel.gender = "Female";
                setState(() {});
              },
              child: GenderItemSection(
                icon: Icons.female,
                label: 'FEMALE',
                color: !isMaleSelected ? activeColor : inactiveColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
