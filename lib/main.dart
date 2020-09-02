import 'package:arca/pages/home.dart';
import 'package:arca/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main(List<String> args) {
  runApp(ArcaApp());
}

class ArcaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff1573CB),
        disabledColor: Color(0xffB2B2B2)
      ),
      home: HomePage(),
      routes: {
        'settings': (context) => SettingsPage()
      },
    );
  }
}
