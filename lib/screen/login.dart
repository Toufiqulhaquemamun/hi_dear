import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hi_dear/screen/forgetpass.dart';
import 'package:hi_dear/screen/registration.dart';

import '../constants.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _status = true;
  bool _isObscure = true;
  final FocusNode myFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Image.asset("assets/images/glossy.png",fit: BoxFit.fitHeight,)
          ),
          new Center(
            child: new ClipRect(
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                           SizedBox(
                             height: height * 0.3,
                             child: Container(
                              child: new Column(
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(left: 20.0, top: 20.0),
                                      child: new Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          new Icon(
                                            Icons.arrow_back_ios,
                                            color: Colors.white,
                                            size: 22.0,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 25.0),
                                            child: new Text('',
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
                           ),
                           SizedBox(
                             height: height * 0.4,
                             child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 0.0),
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
                                                    color: Colors.white,
                                                      fontSize: 25.0,
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
                                                      color: Colors.white,
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
                                                  hintStyle: TextStyle(color: Colors.white54)
                                                ),
                                                enabled: _status,
                                                autofocus: _status,

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
                                                    color: Colors.white,
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
                                                obscureText: _isObscure,
                                                keyboardType: TextInputType.visiblePassword,
                                                decoration: InputDecoration(
                                                  hintStyle: TextStyle(color: Colors.white54),
                                                  suffixIcon: IconButton(
                                                    color: Colors.white,
                                                      onPressed: (){
                                                        setState(() {
                                                          _isObscure = !_isObscure;
                                                        });
                                                      },
                                                      icon:Icon(
                                                        _isObscure?Icons.visibility : Icons.visibility_off
                                                      )
                                                  ),
                                                    hintText: "Password"),
                                                enabled: _status,
                                              ),
                                            ),
                                          ],
                                        )),

                                  ],
                                ),
                              ),
                            ),
                           ),
                           SizedBox(
                             height: height * 0.2,
                             child: Container(
                               child: Padding(
                                  padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 0.0),
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: Container(
                                              child: new ElevatedButton(
                                                child: new Text("Login"),
                                                onPressed: () {
                                                  setState(() {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => Home()),
                                                    );
                                                  });
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: kErrorColor,
                                                  elevation: 8.0,
                                                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                                  textStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0
                                                  )
                                                ),
                                              )),
                                        ),
                                        flex: 2,
                                      ),
                                      Expanded(
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => ForgetPassword()),
                                            );
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 10.0),
                                            child: Container(
                                                  child: new Text("Forgot password ? ",
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0
                                                  ),
                                                  ),
                                                ),
                                          ),
                                        ),
                                        flex: 2,
                                      ),
                                    ],
                                  ),
                                )
                          ),
                           ),
                           SizedBox(
                             height: height * 0.07,
                             child: Container(
                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage("assets/images/glass.jpg"),
                                   fit: BoxFit.cover
                                 ),
                               ),

                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Registration()),
                                      );
                                    },
                                    child: Text('Dont have an account? Sign up' ,
                                        style: TextStyle(
                                          color: Colors.red,
                                        )
                                    ),
                                  )

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
