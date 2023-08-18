import 'package:flutter/material.dart';
import 'package:topsecret/Signup.dart';
import 'package:topsecret/home.dart';
import 'package:topsecret/assets/pallet.dart';   
import 'package:topsecret/responsive/text_field_input.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(40),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Flexible(child: Container(), flex: 2),
            Text(
              'Log in',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Pallete.maintxtcolor),
            ),
            SizedBox(height: 40), 
            TextField(
              controller: _emailController,
              decoration: InputDecoration( 
                hintText: 'Email',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.email),
                 ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.lock),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      print('Login with email: $email, password: $password');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> Home(title: 'home page',))
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Pallete.accentcolor,
                      minimumSize: Size(150,70)
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Pallete.secondarytxtColor,
                      ), 
                    ),
                  ) 
                )
              ],
            ),
            const SizedBox(height: 20), //bottom for already have account
             Flexible(
              flex: 2,
              child: Container(),      
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text(
                    "Don't have an accout?",
                  ),
                ),
                GestureDetector(
                  onTap: ()=> Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Signup(),
                  ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      ' Sign up',
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ), // Use Text widget here
    );
  }
}

