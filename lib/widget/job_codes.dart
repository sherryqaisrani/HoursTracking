import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobCodes extends StatelessWidget {
  const JobCodes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.scatter_plot_rounded,size: 100,),
            SizedBox(height: 20.h,),
            Text("No Job Codes Available!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            SizedBox(height: 20.h,),
            Text("Help your team member better categorize",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            SizedBox(height: 20.h,),
            Text("their time with different job codes.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}
