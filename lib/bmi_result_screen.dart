import 'package:bimcalculator/colors/colors.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double result ;
  const BmiResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Your Result ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 44,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Normal".toUpperCase(),
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      result.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 88,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(

                      "You have a normal body .\n Good job ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,

                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Re-Calculate".toUpperCase(),
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: pinkColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
