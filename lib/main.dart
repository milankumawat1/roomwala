import 'package:flutter/material.dart';
import 'package:roomwala/screens/bottom%20nav/profile.dart';
import 'package:roomwala/screens/bottom%20nav/settings.dart';
import 'package:roomwala/screens/contact.dart';
import 'package:roomwala/screens/details.dart';
import 'package:roomwala/screens/recommendations.dart';
import 'package:roomwala/screens/registeration%20copy.dart';
import 'package:roomwala/screens/registeration.dart';
import 'package:roomwala/screens/saved.dart';
import 'package:roomwala/themes/theme.dart';

import 'screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gothic',
      ),
      home: settings(),
    );
  }
}
