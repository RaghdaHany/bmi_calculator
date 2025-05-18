import 'package:bmi_calculator/bmi_calculator/bmi_calculator.dart';
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
            SizedBox(height: 50),

            resultUI(result),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                 Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BmiCalculator()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                minimumSize: Size(double.infinity, 60),
              ),
              child: Text(
                'Recalculate',
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
            ),
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

      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (result < 24.9 && result > 18.5)
                ? Text(
                  'Normal',
                  style: TextStyle(color: Colors.green, fontSize: 22),
                ): (result > 25 && result < 29.9)
                ? Text(
                  'Over Weight',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ) : (result >30 && result <34.9)?
                Text(
                  'Obese class I',
                  style: TextStyle(color: Colors.red, fontSize: 22))
                  : (result > 35 && result < 39.9)
                ? Text(
                  'Obese class II	 ',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ):Text(
                  'Obese class III	 ',
                  style: TextStyle(color: Colors.red, fontSize: 22),),


            SizedBox(height: 20),

            Text(
          
              result.toStringAsFixed(2),
              
              style: const TextStyle(fontWeight: FontWeight.bold,color: AppColors.white, fontSize: 40),
            ),
            SizedBox(height: 20),

           (result < 24.9 && result > 18.5)
                ? Text(
                  'Normal weight , Good Job',
                  style: TextStyle(color: Colors.green, fontSize: 22),
                ): (result > 25 && result < 29.9)
                ? Text(
                  'Over Weight , Keep Going',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ) : (result >30 && result <34.9)?
                Text(
                  'Obese class I , Keep Going',
                  style: TextStyle(color: Colors.red, fontSize: 22))
                  : (result > 35 && result < 39.9)
                ? Text(
                  'Obese class II	,Keep Going ',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ):Text(
                  'Obese class III	, Keep Going ',
                  style: TextStyle(color: Colors.red, fontSize: 22),),
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