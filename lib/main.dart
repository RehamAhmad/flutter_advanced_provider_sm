import 'package:flutter/material.dart';
import 'package:flutter_advanced_provider/screens/sign_in/auth_widget.dart';
import 'package:flutter_advanced_provider/screens/sign_in/sign_in_page.dart';
import 'package:flutter_advanced_provider/services/firebase_auth_services.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<FirebaseAuthService>(
      create:(context) => FirebaseAuthService(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: AuthWidget(),
      ),
    );
  }
}