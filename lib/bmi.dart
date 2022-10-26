import 'package:flutter/material.dart';

class BMI extends StatelessWidget {
  int? bmiReslut;
  BMI({this.bmiReslut});

  @override
  Widget build(BuildContext context) {
    Color allBoxClr = Color(0xff3949AB);
    Color textIconClr = Color(0xffC2BEBE);
    Color addMinusBOxBG = Color(0xffEFF3F3);
    Color selectClr = Color(0xff00227B);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff6F74DD),
        appBar: AppBar(
          backgroundColor: allBoxClr,
          centerTitle: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
          leading: Icon(Icons.menu),
          title: Text("BMI CALCULATOR"),
          actions: [
            Icon(Icons.dark_mode),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            )
          ],
        ),
        body: Column(
          children: [
            Text(
              "Your BMI: ${bmiReslut}",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Center(
              child: Text(
                bmiReslut! < 23
                    ? "Your are Under Weight"
                    : bmiReslut! < 35
                        ? "You are Healthy"
                        : bmiReslut! < 40
                            ? "You are OverWeight"
                            : "You are Obese.",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
