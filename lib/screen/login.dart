import 'dart:ui';

import 'package:flutter/material.dart';

import '../consts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: FlutterLogo()
          ),
          new Center(
            child: new ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                           Container(
                            height: 200.0,
                            child: new Column(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                                    child: new Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.black,
                                          size: 22.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 25.0),
                                          child: new Text('Login',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0,
                                                  fontFamily: 'sans-serif-light',
                                                  color: Colors.black)),
                                        )
                                      ],
                                    )),

                              ],
                            ),
                          ),
                           Container(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 25.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.0, right: 25.0, top: 25.0),
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          new Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              new Text(
                                                'Login',
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          new Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                                new Container(),
                                            ],
                                          )
                                        ],
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.0, right: 25.0, top: 25.0),
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          new Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              new Text(
                                                'Email',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.0, right: 25.0, top: 2.0),
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          new Flexible(
                                            child: new TextField(
                                              decoration: const InputDecoration(
                                                hintText: "Enter your Email",
                                              ),
                                              enabled: !_status,
                                              autofocus: !_status,

                                            ),
                                          ),
                                        ],
                                      )),

                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.0, right: 25.0, top: 25.0),
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          new Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              new Text(
                                                'Password',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 25.0, right: 25.0, top: 2.0),
                                      child: new Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          new Flexible(
                                            child: new TextField(
                                              decoration: const InputDecoration(
                                                  hintText: "Password"),
                                              enabled: !_status,
                                            ),
                                          ),
                                        ],
                                      )),

                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
