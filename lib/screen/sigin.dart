import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color.dart';
import '../utils/file_path.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              height: 120.h,
              image: AssetImage(FilePath.logo)),
          SizedBox(height: 60.h,),
          Container(
            height: 50.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.grey.shade300
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: aPrimaryColor,
              ),
              child: Center(
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
