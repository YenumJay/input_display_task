import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void simulate() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState() {
    super.initState();
    simulate();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgb.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Container(
                child: Center(
                  child: SpinKitFadingCube(
                    color: Colors.white,
                    size: 50.0,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}