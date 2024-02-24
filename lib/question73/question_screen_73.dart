import 'dart:async';

import 'package:assignment_module_4/question73/second_screen.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 2), () {

      Navigator.push(context, MaterialPageRoute(builder: (context) => Home1() ,));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Question 73"),
      ),

      backgroundColor: Colors.cyan,

      body: Center(

        child: Text("Splash Screen",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,

        ),),
      ),
    );
  }
}

