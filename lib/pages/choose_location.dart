import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff143554),
        title: Container(
          padding: EdgeInsets.only(right: 16),
          child: Center(
            child: Text('Choose a Location'),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.edit_location,
              size: 29,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Choose Location'),
      ),
    );
  }
}
