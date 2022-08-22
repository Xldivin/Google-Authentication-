import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Services/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 20, right: 20, top: size.height * 0.2, bottom: size.height * 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Hello, \nGoogle sign in",
                style: TextStyle(
                    fontSize: 30
                )),
        GestureDetector(
          onTap: (){
            AuthService().signInWithGoogle();
          },
          child: Expanded(
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF64DD17),
                    Color(0xFF64DD17),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text("Sign Up with Google",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17
                ),
              ),
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}