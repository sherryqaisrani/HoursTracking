import 'package:atto/widget/job_codes.dart';
import 'package:atto/widget/overview.dart';
import 'package:atto/widget/team.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Timesheet extends StatefulWidget {
  const Timesheet({Key? key}) : super(key: key);

  @override
  State<Timesheet> createState() => _TimesheetState();
}

class _TimesheetState extends State<Timesheet> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3 , vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.search,color: Colors.black,)),
        title: Text(
          'TimeSheet',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.download,color: Colors.black,))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,

              child: Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios,color: Colors.grey,),
                    Text(
                      DateFormat().add_yMMMd().format(DateTime.now()),
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal),
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey.shade300,
            ),

            TabBar(
                controller:tabController,
                isScrollable: true,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),
                physics: NeverScrollableScrollPhysics(),

                unselectedLabelStyle: TextStyle(color: Colors.grey.shade300),
                padding: EdgeInsets.only(left: 0,right: 100),

                tabs: [
                  Tab(child: Text('Overview',style: TextStyle(color: Colors.black),),),
                  Tab(child: Text('Team',style: TextStyle(color: Colors.black),),),
                  Tab(child: Text('JobCodes',style: TextStyle(color: Colors.black),),),

                ]),
            Expanded(child: TabBarView(

              controller: tabController,
              children: [
              Overview(),
                Team(),
                JobCodes(),

            ],

            ))
          ],
        ),
      ),
    );
  }
}
