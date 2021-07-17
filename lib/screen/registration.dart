


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_dear/screen/login.dart';

import '../constants.dart';

class Registration extends StatefulWidget
{
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration>{
  bool _status = true;
  bool _isObscure = true;
  final FocusNode myFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
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
                           height: height * 0.1,
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
                                           child: new Text('Signup',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 20.0,
                                                   fontFamily: 'sans-serif-light',
                                                   color: Colors.white)),
                                         )
                                       ],
                                     )),
                               ],
                             ),
                           ),
                         ),
                         SizedBox(
                           height: height * 0.65,
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
                                         mainAxisSize: MainAxisSize.max,
                                         children: <Widget>[
                                           new Column(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             mainAxisSize: MainAxisSize.min,
                                             children: <Widget>[
                                               new Text(
                                                 'Name',
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
                                                 hintStyle: TextStyle(color: Colors.white54),
                                                 hintText: "Enter Your Name",
                                               ),
                                               enabled: _status,
                                               autofocus: _status,

                                             ),
                                           ),
                                         ],
                                       )),
                                   Padding(
                                       padding: EdgeInsets.only(
                                           left: 25.0, right: 25.0, top: 15.0),
                                       child: new Row(
                                         mainAxisSize: MainAxisSize.max,
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: <Widget>[
                                           Expanded(
                                             child: Container(
                                               child: new Text(
                                                 'Age',
                                                 style: TextStyle(
                                                     color: Colors.white,
                                                     fontSize: 16.0,
                                                     fontWeight: FontWeight.bold),
                                               ),
                                             ),
                                             flex: 2,
                                           ),
                                           Expanded(
                                             child: Container(
                                               child: new Text(
                                                 'Gender',
                                                 style: TextStyle(
                                                     color: Colors.white,
                                                     fontSize: 16.0,
                                                     fontWeight: FontWeight.bold),
                                               ),
                                             ),
                                             flex: 2,
                                           ),
                                         ],
                                       )),
                                   Padding(
                                       padding: EdgeInsets.only(
                                           left: 25.0, right: 25.0, top: 2.0),
                                       child: new Row(
                                         mainAxisSize: MainAxisSize.max,
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: <Widget>[
                                           Flexible(
                                             child: Padding(
                                               padding: EdgeInsets.only(right: 10.0),
                                               child: new TextField(
                                                 keyboardType: TextInputType.number,
                                                 decoration: const InputDecoration(
                                                     hintStyle: TextStyle(color: Colors.white54),
                                                     hintText: "Enter age"),
                                                 enabled: _status,
                                               ),
                                             ),
                                             flex: 2,
                                           ),
                                           Flexible(
                                             child: new TextField(
                                               decoration: const InputDecoration(
                                                   hintStyle: TextStyle(color: Colors.white54),
                                                   hintText: "Enter gender"),
                                               enabled: _status,
                                             ),
                                             flex: 2,
                                           ),
                                         ],
                                       )),
                                   Padding(
                                       padding: EdgeInsets.only(
                                           left: 25.0, right: 25.0, top: 15.0),
                                       child: new Row(
                                         mainAxisSize: MainAxisSize.max,
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: <Widget>[
                                           Expanded(
                                             child: Container(
                                               child: new Text(
                                                 'Country',
                                                 style: TextStyle(
                                                     color: Colors.white,
                                                     fontSize: 16.0,
                                                     fontWeight: FontWeight.bold),
                                               ),
                                             ),
                                             flex: 2,
                                           ),
                                           Expanded(
                                             child: Container(
                                               child: new Text(
                                                 'State/City',
                                                 style: TextStyle(
                                                     color: Colors.white,
                                                     fontSize: 16.0,
                                                     fontWeight: FontWeight.bold),
                                               ),
                                             ),
                                             flex: 2,
                                           ),
                                         ],
                                       )),
                                   Padding(
                                       padding: EdgeInsets.only(
                                           left: 25.0, right: 25.0, top: 2.0),
                                       child: new Row(
                                         mainAxisSize: MainAxisSize.max,
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: <Widget>[
                                           Flexible(
                                             child: Padding(
                                               padding: EdgeInsets.only(right: 10.0),
                                               child: new TextField(
                                                 decoration: const InputDecoration(
                                                     hintStyle: TextStyle(color: Colors.white54),
                                                     hintText: "Enter country"),
                                                 enabled: _status,
                                               ),
                                             ),
                                             flex: 2,
                                           ),
                                           Flexible(
                                             child: new TextField(
                                               decoration: const InputDecoration(
                                                   hintStyle: TextStyle(color: Colors.white54),
                                                   hintText: "Enter State"),
                                               enabled: _status,
                                             ),
                                             flex: 2,
                                           ),
                                         ],
                                       )),
                                   Padding(
                                       padding: EdgeInsets.only(
                                           left: 25.0, right: 25.0, top: 15.0),
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
                                              keyboardType: TextInputType.emailAddress,
                                               decoration: const InputDecoration(
                                                 hintStyle: TextStyle(color: Colors.white54),
                                                 hintText: "Enter your Email",
                                               ),
                                               enabled: _status,
                                               autofocus: _status,

                                             ),
                                           ),
                                         ],
                                       )),
                                   Padding(
                                       padding: EdgeInsets.only(
                                           left: 25.0, right: 25.0, top: 15.0),
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
                                               child: new Text("SIGNUP"),
                                               onPressed: () {
                                                 setState(() {
                                                   _status = true;
                                                   FocusScope.of(context).requestFocus(new FocusNode());
                                                 });
                                               },
                                               style: ElevatedButton.styleFrom(
                                                   primary: kErrorColor,
                                                   elevation: 8.0,
                                                   padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                                   textStyle: TextStyle(
                                                       fontWeight: FontWeight.bold,
                                                       fontSize: 18.0
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
                                             MaterialPageRoute(builder: (context) => Login()),
                                           );
                                         },
                                         child: Padding(
                                           padding: EdgeInsets.only(left: 10.0),
                                           child: Container(
                                             child: new Text("Already a member ? ",
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