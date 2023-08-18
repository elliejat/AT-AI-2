import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign up-get user info
  Future Signup (String username, String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } catch (e){
      return e.toString();
    }

  }

  //logging in w/ email & pw
  Future LoginPage (String username, String email, String password) async{
    try{
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } catch (e){
      return e.toString();
    }

  }

  //sign out

    
  
}