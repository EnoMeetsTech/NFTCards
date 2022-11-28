import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPassPage extends StatelessWidget {
  ForgotPassPage({Key? key}) : super(key: key);

  final _emailController = TextEditingController();

  Future signIn() async {
    email:
    _emailController.text.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //TODO bottomNavigationBar: ,
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.currency_bitcoin,
              size: 70,
              color: Colors.orange[900],
            ),
            Text(
              'FORGOT PASSWORD?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35),
            ),
            SizedBox(height: 10),
            Text(
              'Please input your email address',
              style: TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orangeAccent),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Email Address',
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: 350,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange[900],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text(
                'Thank you. You\'ll recieve an email shortly!',
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
