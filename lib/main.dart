import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:syariah/features/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
      theme: CupertinoThemeData(brightness: Brightness.light),
    );
  }
}