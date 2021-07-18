

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_dear/constants.dart';
import 'package:hi_dear/screen/login.dart';
import 'package:hi_dear/screen/registration.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ],
            ),
            flex: 1,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("NB GLOBAL",style: TextStyle(
                          color: Colors.red,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width-50,
                        child: Text("All the best business guy are in one place",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic
                        ),),
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )
              ],
            ),
            flex: 2,
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width-50,
                      child: Image.asset("assets/images/love.png",
                        fit: BoxFit.fill,),
                    )
                  ],
                )
              ],
            ),
            flex: 3,
          ),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Registration()));
                        },
                        style:ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 23.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                        child: Text("SIGNUP NOW",
                          style: TextStyle(
                            wordSpacing: 3.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                        ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30.0,horizontal: 0.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        style:ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 50.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                          primary: kButtonColor
                        ),
                        child: Text("LOGIN",
                          style: TextStyle(
                              wordSpacing: 3.0,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            flex: 2,
          )
        ],
      )
    );
  }

}

