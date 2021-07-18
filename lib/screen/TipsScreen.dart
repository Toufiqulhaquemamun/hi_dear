
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tips extends StatefulWidget
{
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: Column(
       children: [
         Flexible(
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 0.0),
                     child: Text("Tips",style: TextStyle(
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
                       child: Text("New startup tips from experts are coming soon\n We all need some relationship tips\nWe will soon add this feature",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           // fontSize: 14.0
                             // fontWeight: FontWeight.bold,
                             // fontStyle: FontStyle.italic
                         ),
                       ),
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
                     width:MediaQuery.of(context).size.width,
                     child: Image.asset("assets/images/dating.png",fit: BoxFit.fitWidth,),
                   )
                 ],
               )
             ],
           ),
           flex: 5,
         ),
         Flexible(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     child: ElevatedButton(
                       onPressed: () { },
                       style:ElevatedButton.styleFrom(
                           padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 23.0),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10.0)
                           )
                       ),
                       child: Text("Browse",
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

             ],
           ),
           flex: 2,
         ),
       ],
     ),
    );
  }

}