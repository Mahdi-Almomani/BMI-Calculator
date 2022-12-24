import 'package:flutter/material.dart';

class BMIResultPage extends StatelessWidget {
  final bool gender;
  final double result;
  final int age;
  BMIResultPage(
      {required this.age, required this.gender, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("BMI Result"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 52, 49, 49),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "Gender : ${gender ? 'male' : 'female'}",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Result : ${result.round()}",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Age : $age",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
