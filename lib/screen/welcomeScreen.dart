

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget
{
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Placeholder(),
            flex: 1,
          ),
          Flexible(
            child: Placeholder(),
            flex: 2,
          ),
          Flexible(
            child: Placeholder(),
            flex: 3,
          ),
          Flexible(
            child: Placeholder(),
            flex: 2,
          )
        ],
      )
    );
  }

}

