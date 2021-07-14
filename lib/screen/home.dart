

import 'package:flutter/material.dart';
import 'package:hi_dear/screen/profile/profile.dart';


import '../consts.dart';

class Home extends StatefulWidget
{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
{
  @override
  Widget build(BuildContext context) {

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
                child: Text(
                  "₹ 1000",
                )
            ),
            flex: 6,
          ),

          Expanded(
            flex: 4,
            child: Placeholder(),
          )
        ],
      ),
    );
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
                    height: 250.0,
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
                    // onTap: () =>Toast.show("Coming soon", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Match Request'),
                    // onTap: () =>Toast.show("Coming soon", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM) ,
                  ),
                  ListTile(
                    leading: Icon(Icons.border_color),
                    title: Text('Startup Tips'),
                    // onTap: _launchURL,
                  ),
                  ListTile(
                    leading: Icon(Icons.rss_feed),
                    title: Text('Feed'),
                    // onTap: _launchPolicyURL,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    // onTap: () =>Toast.show("Coming soon", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM),
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