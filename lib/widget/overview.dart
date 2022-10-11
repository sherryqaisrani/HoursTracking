import 'package:atto/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Overview extends StatelessWidget {
  Overview({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list= ['TOTAL HOURS','REGULAR HOURS','OVERTIME','DOUBLE OVERTIME','PAID BREAK','UNPIAD BREAK','PAID TIME OFF','UNPAID TIME OFF'];


    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 6.h,),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'EST.Total Pay',
                      style: TextStyle(
                          fontSize: 16,

                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '\$0',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Paid hour',
                          style: TextStyle(
                              fontSize: 16,
                              ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'unpaid hour',
                          style: TextStyle(
                              fontSize: 16,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    LinearProgressIndicator(
                      value: 0.8,
                      backgroundColor: Colors.grey,
                      color: Colors.cyan,
                      minHeight: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '12m',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,

                        ),
                        ),
                        Text(
                          '0m',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  // itemCount: laps.length,
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisExtent: 100,
                    childAspectRatio: 0.8,


                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(list[index],style: TextStyle(

                                  fontSize: 14,

                                  ),),
                              Text('30 m',style: TextStyle(

                                  fontSize:18 ,
                                  fontWeight: FontWeight.w500,
                                  ),)
                            ],
                          ),
                        )

                    );
                  }),
            ),


          ],
        ),
      ),
    );
  }
}

