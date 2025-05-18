import 'package:bmi_calculator/core/colors.dart';
import 'package:flutter/material.dart';

class CalculatorResult extends StatelessWidget {
  const CalculatorResult({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          'Your Result',
          style: TextStyle(color: AppColors.white, fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            resultUI(result),
           
          ],
        ),
      ),
    );
  }
}

Expanded resultUI(double result) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (result < 25 && result > 18.5)
                ? Text(
                  'Normal',
                  style: TextStyle(color: Colors.green, fontSize: 22),
                )
                : Text(
                  'Over Weight',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ),

                SizedBox(height: 20,),
       
      
          ],
        ),
      ),
    ),
  );
}
// Underweight	      < 18.5	
// Normal Weight	    18.5 - 24.9	
// Overweight	        25.0 - 29.9
// Obese class I	    30.0 - 34.9
// Obese class II	    35.0 - 39.9	
// Obese class III   	>= 40.0	