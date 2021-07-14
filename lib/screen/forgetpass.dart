
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart';
import 'home.dart';

class ForgetPassword extends StatefulWidget
{
   @override
  _ForgetPassState createState() => _ForgetPassState();
}
class _ForgetPassState extends State<ForgetPassword>
{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
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
                            height: height * 0.071,
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
                           height:height * 0.5,
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 0.0),
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 25.0, right: 25.0, top: 100.0),
                                        child: new Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[
                                            new Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                new Text(
                                                  'Forgot Password',
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
                                               Container(

                                               )
                                              ],
                                            )
                                          ],
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 25.0, right: 25.0, top: 75.0),
                                        child: new Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: <Widget>[
                                            Flexible(
                                              child: new Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  new Text(
                                                    'Enter your email address , we will send you the instructions on how to change your password',
                                                    style: TextStyle(
                                                        fontSize: 15.0,
                                                        color: Colors.white,
                                                        ),
                                                  ),
                                                ],
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
                                                  'Email Address',
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
                                                  hintStyle: TextStyle(color: Colors.white54),
                                                ),
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
                                                child: new Text("Send"),
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

                                            ),
                                          ),
                                        ),
                                        flex: 2,
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          )
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

