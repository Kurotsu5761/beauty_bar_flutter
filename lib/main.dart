import 'package:flutter/material.dart';

import 'constants.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beauty Bar Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPink,
        accentColor: kDarkPink,
        scaffoldBackgroundColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
