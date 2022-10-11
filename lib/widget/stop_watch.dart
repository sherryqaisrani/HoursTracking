import 'dart:async';

import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  bool isTap = true;
  int second = 0, minute = 0, hour = 0;
  String digitSecond = "00";
  String digitMinute = "00";
  String digithour = "00";
  Timer? timer;
  bool started=false;
  List Laps =[];

  void Stop(){
    timer!.cancel();
    setState(() {
      started=false;
    });
  }

  void reset(){
    timer!.cancel();
    setState(() {
      second = 0;
      minute= 0;
      hour = 0;

      digitSecond = "00";
      digitMinute ="00";
      digithour= "00";

      started =false;
    });
  }

  void addlaps(){
    String lap= "$digithour:$digitMinute:$digitSecond";
    setState(() {
      Laps.add(lap);
    });
  }

  void start(){
    started= true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      int localSeconds = second + 1;
      int localMinutes = minute;
      int localHours = hour;

      if(localSeconds>59) {
        if (localMinutes > 59) {
          localHours++;
          localMinutes = 0;
        }
        else {
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        second = localSeconds;
        minute= localMinutes;
        hour= localHours;
        digitSecond=(second>= 10)?"$second":"0$second";
        digithour=(hour>= 10)?"$hour":"0$hour";
        digitMinute=(minute>= 10)?"$minute":"0$minute ";
      });


    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(
        '$digithour:$digitMinute:$digitSecond',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
  }
}
