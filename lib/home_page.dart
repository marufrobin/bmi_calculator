import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ismaleSelected = true;

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
                              "18",
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
                                  onPressed: (() {}),
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
                                  onPressed: (() {}),
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
                              "50",
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
                                  onPressed: (() {}),
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
                                  onPressed: (() {}),
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
            Expanded(flex: 5, child: Placeholder()),
            Expanded(flex: 2, child: Placeholder())
          ],
        ),
      ),
    ));
  }
}
