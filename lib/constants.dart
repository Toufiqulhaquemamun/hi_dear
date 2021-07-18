import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

enum MediaType {
  Photo,
  Video,
}

enum MessageType {
  Text,
  Media,
}

final String ALL_MESSAGES_COLLECTION = 'MESSAGES';
final String USERS_COLLECTION = 'USERS';
final String CHATS_COLLECTION = 'CHATS';
final String MEDIA_COLLECTION = 'MEDIA';

final String CHATS_MEDIA_STORAGE_REF = 'ChatsMedia';

Color kBorderColor1 = Colors.white.withOpacity(0.1);
Color kBorderColor2 = Colors.white.withOpacity(0.07);
Color kBorderColor3 = Colors.white.withOpacity(0.2);
Color kBorderColor4 = Colors.white.withOpacity(0.2);
Color kBaseWhiteColor = Colors.white.withOpacity(0.87);

const kPrimaryColor = Color(0xFF00BF6D);
const kSecondaryColor = Color(0xFFFE9901);
// const kContentColorLightTheme = Color(0xFF1D1D35);
const kContentColorLightTheme = Color(0xFF202020);
const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);
const kButtonColor = Color(0xFF2A4965);

const kDefaultPadding = 20.0;

Color kBlackColor = Colors.black; //('#1C1C1E');
Color kBlackColor2 = HexColor('#121212');// Hexcolor('#161616');
Color kBlackColor3 = HexColor('#1C1C1E');// Hexcolor('#2C2C2E');

TextStyle kWhatsAppStyle = TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.bold,
  color: Colors.black.withOpacity(0.95),
);

TextStyle kSelectedTabStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.black.withOpacity(0.95),
);

TextStyle kUnselectedTabStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.black.withOpacity(0.4),
);

TextStyle kChatItemTitleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle kChatItemSubtitleStyle = TextStyle(
  fontSize: 14,
  color: Colors.white.withOpacity(0.7),
);

TextStyle kAppBarTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: kBaseWhiteColor,
);

TextStyle kChatBubbleTextStyle = TextStyle(
  fontSize: 17,
  color: kBaseWhiteColor,
);

TextStyle kReplyTitleStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: HexColor('#FF0266'),
);

TextStyle kReplySubtitleStyle = TextStyle(
  fontSize: 14,
  color: kBaseWhiteColor,
);

class ReplyColorPair {
  final Color user;
  final Color peer;
  ReplyColorPair({required this.user, required this.peer});
}

List<ReplyColorPair> replyColors = [
  ReplyColorPair(user: HexColor('#09af00'), peer: HexColor('#FF0266')),
  ReplyColorPair(user: HexColor('#C62828'), peer: HexColor('#d602ee')),
  ReplyColorPair(user: HexColor('#f47100'), peer: HexColor('#61d800')),
  ReplyColorPair(user: HexColor('#4E342E'), peer: HexColor('#BF360C')),
  
];

String myPic = 'https://firebasestorage.googleapis.com/v0/b/flutter-whatsapp-1ab58.appspot.com/o/profilePictures%2FBn2lfah2dRRXfp3uZankMDJcgqs1.png?alt=media&token=2d633673-c650-4947-aff2-f0c8287abd31';
