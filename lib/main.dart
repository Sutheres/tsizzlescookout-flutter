import 'package:flutter/material.dart';
import 'package:t_sizzles_cookout/OwnersScreen.dart';


void main() { runApp(TSizzlesCookoutApp()); }

class TSizzlesCookoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'T-Sizzle\'s Cookout',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: OwnersScreen(),
      ),
    );
  }
}
