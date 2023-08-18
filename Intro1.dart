import 'package:flutter/material.dart';
import 'package:topsecret/Signup.dart';
//import 'dart:async';
// import 'splash.dart';
// import 'WelcomePage.dart';
import 'package:topsecret/assets/pallet.dart';
//add images at the top of each page (3)

class Intro1 extends StatelessWidget {
  const Intro1 ({super.key, required String title});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),  
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Use AI to Create\nAlternative Text\nFor You',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Pallete.maintxtcolor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Automate alternative text with\nSEO rich words",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Pallete.maintxtcolor),
            ),

            const SizedBox(height: 20), //adding space
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Intro2())  //create next page
                ); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Pallete.accentcolor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                minimumSize: Size(150, 50),   
              ),
              child: const Text('Next'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            ElevatedButton(
              onPressed : (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Signup())
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                minimumSize: Size(150, 50)              
              ),
              child: const Text('Skip'),   
            ),

          ],
        ),
      ),     

    );
   
  }
}



// second intro page

class Intro2 extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),  
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Import Image And\nLet AI Generate\nAlt Text',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Pallete.maintxtcolor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Never have trouble creating your own\nalternative texts",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Pallete.maintxtcolor),
            ),

            const SizedBox(height: 20), //adding space
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Intro3())  //create next page
                ); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Pallete.accentcolor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                minimumSize: Size(150, 50),   
              ),
              child: const Text('Next'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            ElevatedButton(
              onPressed : (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Signup())
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                minimumSize: Size(150, 50)              
              ),
              child: const Text('Skip'),   
            ),

          ],
        ),
      ),     

    );
   
  }
}



//third page
class Intro3 extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
      ),  
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Copy & Paste Into\nSocial media\nplatforms',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Pallete.maintxtcolor,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "That's it!",
              style: TextStyle(fontSize: 15, color: Pallete.maintxtcolor),
            ),

            const SizedBox(height: 20), //adding space
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Signup())  //create next page
                ); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Pallete.accentcolor,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                minimumSize: Size(150, 50),   
              ),
              child: const Text('Next'),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            ElevatedButton(
              onPressed : (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Signup())
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                minimumSize: Size(150, 50)              
              ),
              child: const Text('Skip'),   
            ),

          ],
        ),
      ),     

    );
   
  }
}
