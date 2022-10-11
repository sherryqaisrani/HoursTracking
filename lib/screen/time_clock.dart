import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../widget/clock.dart';

class TimeClock extends StatelessWidget {
  const TimeClock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Time Clock',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              DateFormat().add_yMMMd().format(DateTime.now()),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 170),
            child: Center(
              child: InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Clock()));
                },
                child: Container(
                  height:  200.h,
                  child: AvatarGlow(
                    glowColor: Colors.green.shade900,
                    endRadius:200.0,
                    duration: Duration(milliseconds: 2000),
                    animate: true,
                    showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(     // Replace this child with your own
                      elevation: 8.0,
                      shape: CircleBorder(
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.green.shade600,
                        child: Text('Clock In',style: TextStyle(color: Colors.white,fontSize: 18),),
                        radius: 50.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),





        ],
      ),
    );
  }
}


