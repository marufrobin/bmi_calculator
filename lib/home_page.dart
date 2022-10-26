import 'dart:math';

import 'package:bmi_calculator/bmi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ismaleSelected = true;
  int height = 31;
  int weight = 20;
  int age = 10;

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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        leading: Icon(Icons.menu),
        title: Text("BMI CALCULATOR"),
        actions: [
          Icon(Icons.dark_mode),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              ismaleSelected = true;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                                color: ismaleSelected == true
                                    ? selectClr
                                    : allBoxClr,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 40,
                                  color: textIconClr,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 30, color: textIconClr),
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          ismaleSelected = false;
                        });
                      },
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            color:
                                ismaleSelected == false ? selectClr : allBoxClr,
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 40,
                              color: textIconClr,
                            ),
                            Text(
                              "Female",
                              style:
                                  TextStyle(fontSize: 30, color: textIconClr),
                            )
                          ],
                        ),
                      ),
                    )),
                  ],
                )),
            Expanded(
                flex: 6,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(16),
                      height: 238,
                      width: 196,
                      decoration: BoxDecoration(
                          color: allBoxClr,
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Age (In Year)",
                            style: TextStyle(fontSize: 20, color: textIconClr),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Center(
                            child: Text(
                              "${age}",
                              style:
                                  TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: (() {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Color(0xffEFF3F3)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16))),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(18))),
                                  child: Icon(
                                    Icons.add,
                                    color: allBoxClr,
                                  )),
                              ElevatedButton(
                                  onPressed: (() {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Color(0xffEFF3F3)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16))),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(18))),
                                  child: Icon(
                                    Icons.remove,
                                    color: allBoxClr,
                                  ))
                            ],
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(16),
                      height: 238,
                      width: 196,
                      decoration: BoxDecoration(
                          color: allBoxClr,
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Weight (kg)",
                            style: TextStyle(fontSize: 20, color: textIconClr),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Center(
                            child: Text(
                              "${weight}",
                              style:
                                  TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  onPressed: (() {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Color(0xffEFF3F3)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16))),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(18))),
                                  child: Icon(
                                    Icons.add,
                                    color: allBoxClr,
                                  )),
                              ElevatedButton(
                                  onPressed: (() {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStatePropertyAll<Color>(
                                              Color(0xffEFF3F3)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16))),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(18))),
                                  child: Icon(
                                    Icons.remove,
                                    color: allBoxClr,
                                  ))
                            ],
                          )
                        ],
                      ),
                    )),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  height: 200,
                  width: 398,
                  decoration: BoxDecoration(
                      color: allBoxClr,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(color: textIconClr, fontSize: 24),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height}",
                            style: TextStyle(fontSize: 60, color: Colors.white),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(color: textIconClr, fontSize: 24),
                          )
                        ],
                      ),
                      SliderTheme(
                          data: SliderTheme.of(context)
                              .copyWith(thumbColor: Colors.pink),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            },
                            max: 300,
                            min: 30,
                          ))
                    ],
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Expanded(
                flex: 2,
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 54),
                  height: 70,
                  minWidth: 220,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => BMI(
                                  bmiReslut: bmi(weight, height).toInt(),
                                ))));
                  }),
                  color: allBoxClr,
                  child: Text(
                    "Calculator",
                    style: TextStyle(color: textIconClr, fontSize: 26),
                  ),
                ))
          ],
        ),
      ),
    ));
  }

  bmi(int weight, int height) {
    return weight / pow((height / 100), 2);
  }
}
