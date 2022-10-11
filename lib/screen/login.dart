import 'package:atto/utils/color.dart';
import 'package:atto/utils/file_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          SizedBox(height: 30.h,),

          Container(
            height: 104.h,
            width: double.infinity,

            decoration: BoxDecoration(
                color: Colors.white,
              border: Border.all(
                color: Colors.grey.shade300
              )
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 1.h,
                    color: Colors.grey.shade300,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Padding(
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
                    'LOG IN',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Text(
            'Forget your Password?',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300,color: Colors.black54),
          ),

        ],
      ),
    );
  }
}
