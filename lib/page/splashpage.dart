import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {


  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    Timer(
      Duration(seconds: 3),
      ()=> Navigator.pushNamed(context, '/sign-in'),
      );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          decoration: BoxDecoration(
            image :DecorationImage(
              image: AssetImage(
                'assets/logo.png'
              ),
            )
          ),
        )
        ),
    );
  }
}