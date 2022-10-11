import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(title: Text('Settings',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  radius: 60,
                  child: Icon(Icons.person,size: 100,color: Colors.white,),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Welcome, Harry!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            SizedBox(height: 10.h,),
            Container(
              height: 2,
              width: 40,
              color: Colors.cyan,
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Text("User Profile",style: TextStyle(fontSize: 16,color: Colors.grey),)),
            ),
            SizedBox(height: 5,),
            Card(
              child:Column(
                children: [
                  Listtile(name: 'harry', icon: Icons.person, icons: Icons.edit),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'abc@gmail.com', icon: Icons.mail, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Change Password', icon: Icons.lock, icons: Icons.arrow_forward_ios)

                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Card(
              child: Listtile(name: 'Notifications', icon: Icons.notification_add, icons: Icons.arrow_forward_ios),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Account",style: TextStyle(fontSize: 16,color: Colors.grey),)),
            ),
            SizedBox(height: 5,),
            Card(
              child:Column(
                children: [
                  Listtile(name: 'alright', icon: Icons.card_giftcard, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Manage Team', icon: Icons.person_add_alt_1_rounded, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Invite New Member', icon: Icons.add, icons: Icons.arrow_forward_ios),


                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Company Settings",style: TextStyle(fontSize: 16,color: Colors.grey),)),
            ),
            SizedBox(height: 5,),
            Card(
              child:Column(
                children: [
                  Listtile(name: 'Departments', icon: Icons.device_hub_sharp, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Workweek & Overtime', icon: Icons.calendar_month, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Timesheet Report', icon: Icons.timer_sharp, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Manual Entries', icon: Icons.sort_by_alpha, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Time Options', icon: Icons.timer_sharp, icons: Icons.arrow_forward_ios),

                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Break Preferences', icon: Icons.coffee, icons: Icons.arrow_forward_ios),

                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Job Codes', icon: Icons.paste_rounded, icons: Icons.arrow_forward_ios),

                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Time Off Preferences', icon: Icons.sunny, icons: Icons.arrow_forward_ios),

                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Location tracking', icon: Icons.location_on_outlined, icons: Icons.arrow_forward_ios),

                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Job Sites', icon: Icons.flag, icons: Icons.arrow_forward_ios),




                ],
              ),
            ),

            SizedBox(height: 15,),
            Card(
              child:Column(
                children: [
                  Listtile(name: 'Help Center', icon: Icons.help_center, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'Feedback & Support', icon: Icons.help, icons: Icons.arrow_forward_ios),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  Listtile(name: 'About', icon: Icons.info_outline, icons: Icons.arrow_forward_ios),


                ],
              ),
            ),
            SizedBox(height: 15,),
            Card(
              child: Listtile(name: 'Logout', icon: Icons.logout, icons: Icons.eject)
            )


          ],
        ),
      ),
    );
  }
}

class Listtile extends StatelessWidget {
  final icon;
  final String name;
  final icons;
  const Listtile({Key? key, required this.name , required this.icon, required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: Colors.grey,),
      title: Text(name),
      trailing: Icon(icons,color: Colors.grey,size: 15,),

    );
  }
}
