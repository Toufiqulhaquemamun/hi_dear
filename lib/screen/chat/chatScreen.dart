

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_dear/model/chat.dart';
import 'package:hi_dear/screen/massage/massageScreen.dart';

import '../../constants.dart';
import '../home.dart';
import 'chat_card.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen>
{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
        title: Text('Massages',
            style: TextStyle(color: Colors.black, fontSize: 20)),
        backgroundColor: Color(0xFFFFFFFF),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
            icon: Icon(Icons.widgets_outlined),
          ),
        ],
      ),
      body: Body(),
    );
  }

}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),

          child: Row(
            children: [
              // FillOutlineButton(press: () {}, text: "Recent Message"),
              // SizedBox(width: kDefaultPadding),
              // FillOutlineButton(
              //   press: () {},
              //   text: "Active",
              //   isFilled: false,
              // ),
              Container(

              )
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              // press: () {  },
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MassageScreen(),
                ),
              ),
            ),
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
      ],
    );
  }
}

