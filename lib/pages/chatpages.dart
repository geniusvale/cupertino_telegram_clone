import 'package:cupertino_telegram_clone/widgets/list_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatPages extends StatelessWidget {
  // final String title;
  const ChatPages({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CupertinoSearchTextField(
                 prefixInsets: EdgeInsets.only(left: 140.0),
                ),
                ListChat()
              ],
            ),
          ),
        ));
  }
}