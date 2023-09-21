import 'package:blood/constant.dart';
import 'package:flutter/material.dart';

class signupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(bgimage, height: 299),
          Text(
            appname,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            slogan,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 3, 186, 0)),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                    fillColor: Color(0xA9E9E5DA),
                    prefixIcon: Icon(Icons.verified_user_outlined),
                    labelText: "UserName",
                    labelStyle: TextStyle(fontSize: 14))),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                    fillColor: Color(0xA9E9E5DA),
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: "Enter the Email",
                    labelStyle: TextStyle(fontSize: 14))),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: TextField(
                style: TextStyle(color: Colors.amber),
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
              style: TextButton.styleFrom(
                  primary: Color.fromARGB(255, 33, 163, 3)),
            ),
          ),
          Center(
              child: SizedBox(
            height: 40,
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Register"),
            ),
          )),
          SizedBox(
            height: 25, // <-- SEE HERE
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Login"),
            style:
                TextButton.styleFrom(primary: Color.fromARGB(255, 0, 191, 45)),
          )
        ],
      ),
    );
  }
}
