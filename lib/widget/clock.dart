import 'dart:async';

import 'package:atto/widget/stop_watch.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../screen/time_clock.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading:Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Center(
            child: Container(
              height: 8,
              width:8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text('On the Clock',style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text(
                DateFormat().add_yMMMd().format(DateTime.now()),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal),
              ),
            ),
            SizedBox(height: 20.h,),
           StopWatch(),
            SizedBox(
              height: 100.h,
            ),
            InkWell(
              onTap: () {
                isTap = !isTap;
                setState(() {
                  (!started)? start(): reset();

                }
                );

              },
              child: Container(
                height: 200.h,
                child: AvatarGlow(
                  glowColor: Colors.red.shade900,
                  endRadius:200.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Material(     // Replace this child with your own
                    elevation: 8.0,
                    shape: CircleBorder(
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.red.shade700,
                      child: Text('Clock Out',style: TextStyle(color: Colors.white,fontSize: 18),),
                      radius: 55.0,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
