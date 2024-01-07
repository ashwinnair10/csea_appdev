// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isAuthenticated = false;

  void login() {
    final String email = emailController.text.trim();
    final String password = passwordController.text.trim();

    if (email != "" && password != "") {
      setState(() {
        isAuthenticated = true;
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 189, 193, 255),
            title: Text(
              "Login Failed",
              style: TextStyle(
                fontFamily: 'Rubik',
              ),
            ),
            content: Text(
              "Invalid email/password.",
              style: TextStyle(
                fontFamily: 'Rubik',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "OK",
                  style: TextStyle(
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isAuthenticated) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 15, 20, 36),
            elevation: 0,
          ),
          backgroundColor: Color.fromARGB(255, 15, 20, 36),
          body: Center(
              child: CircularProgressIndicator(
            color: const Color.fromARGB(255, 189, 193, 255),
            strokeWidth: 3,
          )),
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 15, 20, 36),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.timer,
                          size: 150,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        Icon(
                          Icons.timer,
                          size: 100,
                          color: Color.fromARGB(255, 88, 71, 235),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      'Time Tracker',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Rubik',
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 189, 193, 255),
                              width: 2,
                            ),
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 189, 193, 255),
                            fontFamily: 'Rubik',
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 189, 193, 255),
                            fontFamily: 'Rubik',
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 189, 193, 255),
                              width: 1,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 189, 193, 255),
                              width: 2,
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 189, 193, 255),
                            fontFamily: 'Rubik',
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: const Color.fromARGB(255, 189, 193, 255),
                            fontFamily: 'Rubik',
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color.fromARGB(255, 189, 193, 255),
                              width: 1,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 37, 130, 161)),
                        ),
                        onPressed: login,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'Rubik',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}
