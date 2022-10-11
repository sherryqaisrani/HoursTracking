import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          SizedBox(height: 5.h,),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade400,
              ),
              title: Text("Harry"),
              subtitle: Text('0m   \$0'),
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
            ),
          )
        ],
      ),
    );
  }
}
