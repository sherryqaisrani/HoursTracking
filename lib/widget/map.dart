import 'package:atto/screen/activity.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  static Future<void> openMap() async{
    String googleUrl="https://www.google.com/maps/place/Rawalpindi,+Punjab,+Pakistan";
    final Uri _url = Uri.parse(googleUrl);
    try{
      await launchUrl(_url);
    }catch(e){

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Activity(onmapFunction: openMap),
    );
  }
}
