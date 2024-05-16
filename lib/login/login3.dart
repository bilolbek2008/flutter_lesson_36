import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login4.dart';

class login3 extends StatelessWidget {
  const login3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    body: SingleChildScrollView(
    child: Column(
        children: [
        const SizedBox(height: 30),
    const Text(
    "Register",
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
    ),
    const SizedBox(height: 10),
    const Text(
    "Create your account for your schedule",
    style: TextStyle(fontSize: 15),
    textAlign: TextAlign.center,
    ),
    const SizedBox(height: 30),
    const TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    prefix: Icon(Icons.person),
    labelText: "Your name",
    border: OutlineInputBorder(),
    ),
    ),
    const SizedBox(height: 30),
    const TextField(
    obscureText: true,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    prefix: Icon(Icons.email),
    labelText: "Email",
    border: OutlineInputBorder(),
    ),
    ),
    const SizedBox(height: 30),
    const TextField(
    obscureText: true,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    prefix: Icon(Icons.key),
    suffix: Icon(CupertinoIcons.eye_slash_fill),
    labelText: "New Password",
    border: OutlineInputBorder(),
    ),
    ),
    const SizedBox(height: 30),
    const TextField(
    obscureText: true,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    prefix: Icon(Icons.key),
    suffix: Icon(CupertinoIcons.eye_slash_fill),
    labelText: "Repeat Password",
    border: OutlineInputBorder(),
    ),
    ),
    const SizedBox(height: 20),
    const Text("Forgot Password?", style: TextStyle(fontSize: 15)),
    const SizedBox(height: 20),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Text("Don't have an account?",
    style: TextStyle(fontSize: 15)),
    TextButton(
    onPressed: () {},
    child: const Text("Sign in here",
    style: TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.bold)))
    ],
    ),
    SizedBox(
    width: double.infinity,
    child: ElevatedButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => login4()),
    );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    ),
    child: Text(
    "Continue",
    style: TextStyle(fontSize: 30, color: Colors.white),
    ),
    ),
    ),
    const SizedBox(
    height: 20,
    ),
    const Text(
    "By continuing, you agree to Enter your account? ",
    style: TextStyle(fontSize: 15, color: Colors.black),
    ),
    const SizedBox(height: 40),
    ],
    ),
    ),
    ),
    );
  }
}

