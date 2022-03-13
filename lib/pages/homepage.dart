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
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Text('Edit'),
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
        return Container();
      },
    );
  }
}
