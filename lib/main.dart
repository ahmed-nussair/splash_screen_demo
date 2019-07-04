import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomePage': (BuildContext context) => HomeScreen()
    } ,
  ),
);

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}

/*class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}*/

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("The first screen"), centerTitle: true,),
        body: Center(
          child: Text("The first screen", style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}

