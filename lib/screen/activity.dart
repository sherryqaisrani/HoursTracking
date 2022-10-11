import 'package:atto/screen/time_clock.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  final Function? onmapFunction;
  const Activity({Key? key, this.onmapFunction}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.search,color: Colors.grey,),
        title: Text('Team Activity',style: TextStyle(fontSize: 18,color: Colors.black),),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network('https://developers.google.com/static/maps/documentation/android-sdk/images/zoom-level-14.png',fit: BoxFit.cover,),

      DraggableScrollableSheet(
      initialChildSize: 0.5,
      maxChildSize: 0.8,
      minChildSize: 0.15,
      builder: (BuildContext context, ScrollController scrollController )
      {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            color: Colors.grey.shade100,
            border: Border.all(color: Colors.black26,width: 1),
          ),
          child: ListView(
            physics: ClampingScrollPhysics(),
            controller: scrollController,

            children: [
              Center(
                child: SizedBox(
                  width: 50,
                  child: Divider(
                    thickness: 5,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey.shade300
                ),
                title: Text('Harry'),
                subtitle: Text('Not Active!'),
                trailing: Icon(Icons.arrow_forward_ios,size: 20,),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade300,
                ),
              ),
              ListTile(
                title: Text('Add New Member'),
                subtitle: Text('Invite team member to join this!'),
                trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                leading: Icon(Icons.add,color: Colors.cyan,size: 30,),
              ),
            ],
          ),

        );
      }
      ),

        ],
      )
    );
  }
}
