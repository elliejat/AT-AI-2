import 'package:flutter/material.dart';
import 'package:topsecret/Login.dart';
import 'package:topsecret/assets/pallet.dart';
import 'Intro1.dart';

// add logo icon at the top of the

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Alternative text AI',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Pallete.accentcolor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "The only app you need to create\nalternative texts with AI.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Pallete.maintxtcolor),
            ),
            SizedBox(height: 5),
            Text(
              "(...plus more features!)",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Pallete.darkgreycolor),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Intro1(title: 'intro page if you dont have account',)),
                );
              },
                style: ElevatedButton.styleFrom(
                backgroundColor: Pallete.accentcolor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                minimumSize: Size(150, 50),  
                ),
              child: Text("Let's Do It!"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
             InkWell(
              onTap : (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> LoginPage())
                );
              },
              child: const Text(
                'Already have an account? Log in',
                style: TextStyle(fontSize: 15, color: Pallete.darkgreycolor),

              ),   
            ),

          ],
        )
      ),
    );
  }
}
