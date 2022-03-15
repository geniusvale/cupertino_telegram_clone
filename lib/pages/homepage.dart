import 'package:cupertino_telegram_clone/pages/chatpages.dart';
import 'package:cupertino_telegram_clone/pages/newpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Edit',
                style: TextStyle(color: CupertinoColors.activeBlue),
              )),
          middle: Text('Chats'),
          trailing: Icon(CupertinoIcons.pen),
        ),
        child: BottomNav());
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
            label: 'Contact', icon: Icon(CupertinoIcons.person_crop_circle)),
        BottomNavigationBarItem(
            label: 'Calls', icon: Icon(CupertinoIcons.phone)),
        BottomNavigationBarItem(
            label: 'Chats', icon: Icon(CupertinoIcons.chat_bubble)),
        BottomNavigationBarItem(
            label: 'Setting', icon: Icon(CupertinoIcons.settings))
      ]),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return NewPage(title: 'Contact');
          case 1:
            return NewPage(title: 'Calls');
          case 2:
            return ChatPages();
          case 3:
            return NewPage(title: 'Setting');
          default:
            return ChatPages();
        }
        ;
      },
    );
  }
}
