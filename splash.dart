
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:topsecret/WelcomePage.dart';
import 'package:topsecret/assets/pallet.dart';
//make the words come towards user

class Splash extends StatefulWidget {
  const Splash({super.key});

@override
_SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<Splash> {
  double containersize = 100;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        containersize = 300.0;
      });  
    });

    Timer(Duration(seconds: 2),
      ()=>Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                              (context) =>
                              WelcomePage()
                              ),
                    ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.accentcolor,
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          child: Text (
            ' AT AI', 
            style: TextStyle(
              fontSize: 30,
              color: Pallete.secondarytxtColor,
              fontWeight: FontWeight.bold
              ),
            ),
        ),
      )

    );


  }
  
}


