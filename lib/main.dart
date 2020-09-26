import 'package:flutter/material.dart';
import 'package:flutter_advanced_provider/screens/sign_in/sin_in_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: SignInPage(),
    );
  }
}