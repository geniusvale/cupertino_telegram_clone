import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final _themeLight = const CupertinoThemeData.raw(
      Brightness.light, null, null, null, null, null);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: _themeLight,
      home: HomePage(),
    );
  }
}
