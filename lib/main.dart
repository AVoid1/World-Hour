
import 'package:flutter/material.dart';
import 'package:location/pages/choose_location.dart';
import 'package:location/pages/home.dart';
import 'package:location/pages/loading.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    },
  ));
}


