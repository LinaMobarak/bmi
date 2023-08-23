

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_res.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  bool isMale = true;
  double height = 120.0;
  int weight = 60, age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        backgroundColor: Color(0xff000721),
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body:Column(
        children: [

          Expanded(
            child: Container(
              color: Color(0xff000721),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xff1a2131),
                            border : Border.all(
                              color: isMale ? Colors.red : Color(0xff1a2131),
                              width : 5.0,
                            ),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 8.0,),
                              Icon(
                                  Icons.male,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5.0,),
                              Text('MALE', style: TextStyle(color: Colors.grey, fontSize: 20.0),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },

                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xff1a2131),
                            border : Border.all(
                              color: isMale ?  Color(0xff1a2131):  Colors.red   ,
                              width : 5.0,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 8.0,),
                              Icon(
                                Icons.female,
                                size: 100.0,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5.0,),
                              Text('FEMALE', style: TextStyle(color: Colors.grey, fontSize: 20.0),)
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: Color(0xff000721),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Color(0xff1a2131),
                   ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT',style: TextStyle(color: Colors.grey, fontSize: 25.0,),),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${height.round()}', style: TextStyle(fontSize: 40.0,color: Colors.white, fontWeight: FontWeight.w900),),
                          SizedBox(width: 5.0,),
                          Text('CM',style: TextStyle(fontSize: 20.0,color: Colors.white ,fontWeight: FontWeight.bold) )
                        ],
                      ),
                      Slider(
                          value: height,
                          max: 220.0,
                          min: 80.0,
                          onChanged: (value){
                            setState(() {
                              height= value;
                            });
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child:Container(
              color: Color(0xff000721),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xff1a2131),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',style: TextStyle(color: Colors.grey, fontSize: 25.0,),),
                            SizedBox(height: 7.0,),
                            Text('${weight}',style: TextStyle(color: Colors.white, fontSize: 40.0,fontWeight: FontWeight.w900),),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(Icons.remove,),
                                  mini: true,
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                ),
                                FloatingActionButton(
                                  child: Icon(Icons.add,),
                                  mini: true,
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    }
                                    );
                                  },
                                  heroTag: 'weight+',
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xff1a2131),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',style: TextStyle(color: Colors.grey, fontSize: 25.0,),),
                            SizedBox(height: 7.0,),
                            Text('${age}',style: TextStyle(color: Colors.white, fontSize: 40.0,fontWeight: FontWeight.w900),),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child: Icon(Icons.remove,),
                                  mini: true,
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                ),
                                FloatingActionButton(
                                  child: Icon(Icons.add,),
                                  mini: true,
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            color: Color(0xff770f07),
            child: MaterialButton(
                onPressed: (){
                  double result = weight / pow(height/100, 2);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context) => BmiRes(
                            age:age, result: result.round(),  isMale: isMale,
                          ),
                      ),
                  );
                },
              child: Text('CALCULATE',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),


              ),
            ),
          ),
        ],
      ),
    );
  }
}
