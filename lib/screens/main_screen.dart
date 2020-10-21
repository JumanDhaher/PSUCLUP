import 'package:flutter/material.dart';

import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/ic_logo.png',
            height: 240,
            width: 240,
          ),
          Text(
            'PSU Clubs',
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 30),
          ),
          Column(
            children: [
              FlatButton.icon(
                icon: Icon(Icons.login),
                onPressed: () {},
                label: Text('Sign in with google'),
                color: Colors.black12,
              ),
              FlatButton(
                child: Text('Or Continue as a guest'),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              )
            ],
          )
        ],
      ),
    ));
  }
}
