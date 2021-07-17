

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_dear/model/userRequest.dart';
import 'package:hi_dear/screen/request/request_card.dart';

import '../home.dart';

class RequestScreen extends StatefulWidget
{
  @override
  _RequestState createState() => _RequestState();

}
class _RequestState extends State<RequestScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
        title: Text('Request',
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
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.9,
                // childAspectRatio: MediaQuery.of(context).size.width /
                //     (MediaQuery.of(context).size.height / 4),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: requestData.length,
            itemBuilder: (BuildContext ctx, index)  => RequestCard(
              press: () {  },
              request: requestData[index],
              // press: () => Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => MassageScreen(),
              //   ),
              // ),
            ),
        ),
      ),
    );
  }

}