

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi_dear/model/userRequest.dart';

import '../../constants.dart';

class RequestCard extends StatelessWidget
{
  const RequestCard({
    Key? key,
    required this.request,
    required this.press,
  }) : super(key: key);

  final UserRequest request;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
      return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          // color: Colors.amber,
          borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(request.image),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    child: CircleAvatar(
                      radius: 13,
                     child: Icon(Icons.close),
                    )
                  ),
                  // right: 0,
                  // bottom: 0,
                  // child: Container(
                  //   height: 16,
                  //   width: 16,
                  //   decoration: BoxDecoration(
                  //     color: kPrimaryColor,
                  //     shape: BoxShape.circle,
                  //     border: Border.all(
                  //         color: Theme.of(context).scaffoldBackgroundColor,
                  //         width: 3),
                  //   ),
                  // ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(request.name,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            if(request.isRequestSent)
              ...[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text("Accept",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        child: Text("Reject",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                      )
                    ],
                  )
                )
              ]
            else ...[
              Container(
                child: Text(request.joinTime,
                  style: TextStyle(
                      color: Colors.black45
                  ),
                ),
              )
            ]


          ],
        ),
    );
  }
  
}