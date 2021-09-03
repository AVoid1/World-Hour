import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

   Map data = ModalRoute.of(context).settings.arguments;


   String bgImage = data['isDayTime'] ? 'day.jfif' : 'night.jfif';

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/night.jfif'),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(top: 80)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'location',  //data['location'],
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, letterSpacing: 2),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text(
                'time', //data['time'],
                style: TextStyle(fontSize: 60, color: Colors.white),
              ),
              Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Center(child: Image.asset('assets/images/hour.jpg'))),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(bottom: 70, right: 20),
                child: Center(
                  child: FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                      Icons.edit_location,
                      size: 26,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Edit Location',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
