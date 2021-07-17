

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_dear/model/chatMessage.dart';


import '../../constants.dart';
import 'component/chat_input_field.dart';
import 'component/message.dart';

class MassageScreen extends StatefulWidget
{
  @override
  _MassageState  createState() => _MassageState();
}

class _MassageState extends State<MassageScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView.builder(
                itemCount: demeChatMessages.length,
                itemBuilder: (context, index) =>
                    Message(message: demeChatMessages[index]),
              ),
            ),
          ),
          ChatInputField(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackButton(),
          // CircleAvatar(
          //   backgroundImage: AssetImage("assets/images/user_2.png"),
          // ),
          // SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kristin Watson",
                style: TextStyle(fontSize: 16,color: Colors.black),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12,color: Colors.black45),
              )
            ],
          )
        ],
      ),
      // actions: [
      //   IconButton(
      //     icon: Icon(Icons.local_phone),
      //     onPressed: () {},
      //   ),
      //   IconButton(
      //     icon: Icon(Icons.videocam),
      //     onPressed: () {},
      //   ),
      //   SizedBox(width: kDefaultPadding / 2),
      // ],
    );
  }
}