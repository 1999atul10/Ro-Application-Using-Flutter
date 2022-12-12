import 'dart:io';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "AQUA FAIR",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () => exit(0),
                icon: Image.asset("assets/aquafair.jfif"))
          ],
        ),
        body: Container(
          color: Colors.lightBlueAccent,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 150),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Card(
                      color: Colors.lightBlue,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          label: Text(
                            "Username",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          hintText: "Enter Username",
                        ),
                      ),
                    ),
                    const Card(
                      color: Colors.lightBlue,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            label: Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            hintText: "Enter Password"),
                      ),
                    ),
                    InkWell(
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50.0,
                      width: 350,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "or login with",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
