import 'package:flutter/material.dart';
import 'package:location/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Kolkata',
        flag: 'india.png',
        url: 'Asia/Kolkata',
        time: 'now');
    await instance.getTime();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
      'isDayTime' : instance.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff143554),
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 40.0,
        ),
      )
    );
  }
}
