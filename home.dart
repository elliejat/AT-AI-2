import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required String title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'home page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),

    );
  }
}

