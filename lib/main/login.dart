import 'package:flutter/material.dart';
import 'package:register/main/forgotpass.dart';
import 'package:register/main/signup.dart';
import 'welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    email:
    _emailController.text.trim();
    password:
    _passwordController.text.trim();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //TODO bottomNavigationBar: ,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.currency_bitcoin,
                size: 70,
                color: Colors.orange[900],
              ),
              Text(
                'WELCOME BACK!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 35),
              ),
              SizedBox(height: 10),
              Text(
                'Seize the day for it pours with new opportunities...',
                style: TextStyle(fontSize: 20, color: Colors.white),
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orangeAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.only(right: 30),
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ForgotPassPage()));
                    },
                  )),
              SizedBox(height: 20),
              SizedBox(
                height: 55,
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
                            builder: (context) => const WelcomePage()));
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New User?',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  GestureDetector(
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                          color: Colors.orange[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignpPage()));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
