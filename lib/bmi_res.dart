import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiRes extends StatelessWidget {

   int result ;
   int age;  bool isMale;

  BmiRes({
    required this.result, required this.age, required this.isMale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000721),
        title:
        Text(
          'BMI RESULT',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xff1a2131),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(

                  width: double.infinity, height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff000721),

                  ),
                  child: Center(
                    child: Text('Gender : ${isMale? 'Male' : 'Female '} ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,

                    ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity, height: 80.0,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff000721),

                  ),
                  child: Center(
                    child: Text('Result : $result ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: double.infinity, height: 80.0,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff000721),

                  ),
                  child: Center(
                    child: Text('Age : $age',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
