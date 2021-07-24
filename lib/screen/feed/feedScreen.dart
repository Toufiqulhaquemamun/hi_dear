

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_dear/model/userRequest.dart';

import '../home.dart';

class FeedScreen extends StatefulWidget
{
  @override
  _FeedState createState() => _FeedState();

}

class _FeedState extends State<FeedScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
        title: Text('Feed',
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
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: requestData.length,
            itemBuilder: (BuildContext ctx,index) => RequestList (
              press: () {  },
              request: requestData[index],
            )
        ),
      ),
    );
  }
  
}

class RequestList extends StatelessWidget {
  const RequestList({
    Key? key,
    required this.request,
    required this.press,
  }) : super(key: key);
  final UserRequest request;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Container(
            height: 350.0,
            
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Image.asset(request.image),
                  ),
                  title: Text(request.name),
                  subtitle: Text(request.joinTime),
                ),
                Expanded(
                    child: Container(
                      color: Colors.blue,
                    ))
              ],
            ),
          )
        ],
      )
    );
  }
}