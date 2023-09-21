import 'package:blood/Home.dart';
import 'package:blood/constant.dart';
import 'package:blood/signupscreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(bgimage, height: 320),
          Text(
            appname,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 10, // <-- SEE HERE
          ),
          Text(
            slogan,
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
          ),
          SizedBox(
            height: 20, // <-- SEE HERE
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
                style: TextStyle(color: Colors.amber, height: 0.10),
                decoration: InputDecoration(
                    fillColor: Color(0xA9E9E5DA),
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: "Enter the Email",
                    labelStyle: TextStyle(fontSize: 14))),
          ),
          SizedBox(
            height: 10, // <-- SEE HERE
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
                style: TextStyle(
                  color: Colors.amber,
                  height: 0.10,
                ),
                decoration: InputDecoration(
                    fillColor: Color(0xA9E9E5DA),
                    prefixIcon: Icon(Icons.lock_clock_outlined),
                    labelText: "Enter the Password",
                    labelStyle: TextStyle(fontSize: 14))),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text("Forgot Password"),
              style: TextButton.styleFrom(primary: Colors.green),
            ),
          ),
          SizedBox(
            height: 20, // <-- SEE HERE
          ),
          Center(
              child: SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homescreen()));
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )),
          SizedBox(
            height: 25, // <-- SEE HERE
          ),
          Text("Don't Have Accont"),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signupScreen()));
            },
            child: Text("Register"),
            style: TextButton.styleFrom(primary: Colors.red),
          )
        ],
      ),
    );
  }
}
