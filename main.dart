import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:topsecret/splash.dart';
// import 'dart:async';


// import 'splash.dart';
// import 'WelcomePage.dart';
// import 'home.dart';
// import 'Intro1.dart';

//web: 
//Initialize Firebase
// const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyD64b7RgRRbF8FsGqhBrQFG7JBEjtzBZpk", 
          appId: "1:669731169601:web:0c069986f16bd0a8302dc0",
           messagingSenderId: "669731169601", 
           projectId: "at-ai-b90cf", 
           storageBucket: "at-ai-b90cf.appspot.com"
          ),
        );
    } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AT AI PROJECT',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(),      
    );
  }
}


