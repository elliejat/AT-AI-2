import 'package:flutter/material.dart';
import 'package:topsecret/home.dart';

//

class Niche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Niche page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home(title: 'home page',)),  //wont show up
            );
          },
          child: Text("Continue"),
        ),
      ),

    );
  }
}