

import 'package:flutter/material.dart';
import 'package:hi_dear/screen/feed/feedScreen.dart';
import 'package:hi_dear/screen/profile/profile.dart';
import 'package:hi_dear/screen/request/requestScreen.dart';
import 'package:hi_dear/screen/settingScreen.dart';
import 'package:swipe/swipe.dart';


import '../constants.dart';
import 'TipsScreen.dart';
import 'chat/chatScreen.dart';

class Home extends StatefulWidget
{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{

  String _message = 'Swipe your screen';
  @override
  Widget build(BuildContext context) {

    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
        title: Text('Browse',
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
      body: Column(
        children: [
          Expanded(
            child:  Align(
                alignment: FractionalOffset.center,
                child: Container(
                  child: Swipe(
                    child: Container(
                      height: height*0.38,
                      width: width*0.6,
                      child: Card(
                          elevation: 3.0,
                          child: Container(
                            color: Colors.white54,
                            padding: EdgeInsets.fromLTRB(width*0.05, height*0.02, width*0.05, height*0.02),
                            child: Image.asset("assets/images/demo.png",fit: BoxFit.fill),
                          )
                        ),
                    ),
                    onSwipeUp: () {
                      setState(() {
                        _message = 'Swiping up';
                      });
                    },
                    onSwipeDown: () {
                      setState(() {
                        _message = 'Swiping down';
                      });
                    },
                    onSwipeLeft: () {
                      setState(() {
                        _message = 'Swiping left';
                      });
                    },
                    onSwipeRight: () {
                      setState(() {
                        _message = 'Swiping right';
                      });
                    },
                  ),
                ),
            ),
            flex: 6,
          ),
          Expanded(
            flex: 4,
            child: Container(
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(width,height),
                      painter: CurvedPainter(),
                    ),
                    Positioned(
                      top: 100.0,
                      left: 230.0,
                      child: Container(

                        child: Image(
                          image: AssetImage("assets/images/heart.png"),
                        )
                      ),
                    ),

                    Positioned(
                      top: 100.0,
                      left: 50.0,
                      child: Container(

                          child: Image(
                            image: AssetImage("assets/images/cross.png"),
                          )
                      ),
                    )
                  ],

                ),
            ),
          )
        ],
      ),
    );
  }
  
}


class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black12
      ..strokeWidth = 2;

    var path = Path();

    path.moveTo(0, size.height * 0.2);

    path.quadraticBezierTo(size.width*.5, size.height*0.0001,
        size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
class NavDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.68,
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    height: height*0.4,
                    child: DrawerHeader(
                      child: new Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => ProfilePage()),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: new Stack(fit: StackFit.loose, children: <Widget>[
                                new Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new CircleAvatar(
                                        radius: 80.0,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage: AssetImage("assets/images/as.png")
                                    ),
                                  ],
                                ),

                              ]),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Browse'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.widgets),
                    title: Text('Massage'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatsScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Match Request'),
                    onTap:  (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RequestScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.border_color),
                    title: Text('Startup Tips'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Tips()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.rss_feed),
                    title: Text('Feed'),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FeedScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Setting()));
                    },
                  ),
                ],
              ),
            ),
            ColoredBox(
              color: Colors.redAccent,
              child: Container(
                height: height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('HI Dear App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    )
                    ),
                    // Image.asset(
                    //   'assets/images/camera.png',
                    //   height: width * 0.07,
                    //   //width: width * 0.20,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}