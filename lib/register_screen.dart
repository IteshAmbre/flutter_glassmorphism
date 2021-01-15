import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/abstract.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 24,
                  spreadRadius: 16,
                  color: Colors.black.withOpacity(0.2),
                )
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 40.0,
                    sigmaY: 40.0,
                  ),
                  child: Container(
                    height: 500,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(
                            child: Container(
                              width: 150,
                              height: 100,
                              /*decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),*/
                              child: Image.asset('assets/images/fl.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 0, bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              labelStyle: new TextStyle(color: Colors.black),
                              labelText: 'Enter E-mail address here',
                              hintText: 'Enter valid mail id as abc@gmail.com',
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              labelStyle: new TextStyle(color: Colors.black),
                              labelText: 'Enter Password here',
                              hintText: 'Enter your secure password',
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            //TODO FORGOT PASSWORD SCREEN GOES HERE
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Register',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LoginScreen()));
                          },
                          child: Text(
                            'Already registered then click here',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
