import 'package:flutter/material.dart';
import 'package:rebulit_bmi_calc/models/bmi_input_model.dart';
import 'package:rebulit_bmi_calc/widgets/appbar_bmi.dart';
import 'package:rebulit_bmi_calc/widgets/gender_secsion.dart';
import 'package:rebulit_bmi_calc/widgets/height_selection_item.dart';
import 'package:rebulit_bmi_calc/widgets/result_screen.dart';
import 'package:rebulit_bmi_calc/widgets/weight_age_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
BmiInputModel bmiInputModel = BmiInputModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090B24),

      body: SafeArea(
        child: Column(
          children: [
                AppBarBmi(),
              //  SizedBox(height: 10,),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  spacing: 15,
                  children: [
                    Expanded(child: GenderSection(bmiInputModel: bmiInputModel,)),
                    Expanded(child: HeightSelectionItem(bmiInputModel: bmiInputModel,)),
                    Expanded(child: WeightAgeSection(bmiInputModel: bmiInputModel,)),
                  ],
                ),
              ),
            ),
           
           SizedBox(height: 20),
           SizedBox(
             width: double.infinity,
             child: ElevatedButton(onPressed: () {
              double bmiResult = bmiInputModel.calculateBmi();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResultScreen(bmiResult: bmiResult,);
              }));

             },
             style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffEB1555),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21),
              ),
              padding: EdgeInsets.symmetric(horizontal: 64, vertical: 20),
             ),
              child: Text('CALCULATE', style: TextStyle(fontSize: 24,color: Colors.white, fontWeight: FontWeight.bold),),
             ),
           ),
          ],
        ),
      ),
    );
  }
}
