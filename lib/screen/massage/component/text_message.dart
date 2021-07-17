
import 'package:flutter/material.dart';
import 'package:hi_dear/model/chatMessage.dart';


import '../../../constants.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width-80,
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: kErrorColor.withOpacity(message!.isSender ? 1 : 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        child: Text(
          message!.text,
          style: TextStyle(
            color: message!.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyText1!.color,
          ),
        ),
      ),
    );
  }
}
