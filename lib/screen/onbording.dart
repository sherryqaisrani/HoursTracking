import 'package:atto/screen/login.dart';
import 'package:atto/screen/sigin.dart';
import 'package:atto/utils/color.dart';
import 'package:atto/utils/file_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 550.h,
            width: double.infinity,
            child: PageView(
              controller: controller,
              children: [
                Image(
                  image: AssetImage(FilePath.img1),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage(FilePath.img2),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage(FilePath.img3),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage(FilePath.img4),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage(FilePath.img5),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage(FilePath.img6),
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage(FilePath.img7),
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.grey.shade100,
        height: 120.h,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 7,
                    effect: ScrollingDotsEffect(
                      activeStrokeWidth: 1.6,
                      activeDotScale: 1.3,
                      maxVisibleDots: 5,
                      dotColor: Color.fromRGBO(198, 198, 198, 1),
                      activeDotColor: Colors.grey,
                      radius: 8,
                      spacing: 5,
                      dotHeight: 5,
                      dotWidth: 5,
                    ),
                    onDotClicked: (index) => controller.animateToPage(index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Container(
                    height: 50.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        )),
                    child: Center(
                        child: Text(
                      'LOG IN',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));

                  },
                  child: Container(
                    height: 50.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: aPrimaryColor,
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                        child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
