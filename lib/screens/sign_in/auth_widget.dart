import 'package:flutter/material.dart';
import 'package:flutter_advanced_provider/screens/home/home_page.dart';
import 'package:flutter_advanced_provider/screens/sign_in/sign_in_page.dart';
import 'package:flutter_advanced_provider/services/firebase_auth_services.dart';
import 'package:provider/provider.dart';

class AuthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService =  Provider.of<FirebaseAuthService>(context, listen:false);
    return StreamBuilder<User>(
      stream: authService.onAuthStateChanged,
      builder: ( context,  snapshot) { 
        if(snapshot.connectionState == ConnectionState.active){
          final user = snapshot.data; // current user
          return user != null ? HomePage() : SignInPage();
        } 
        return Scaffold(body: Center(child: CircularProgressIndicator(),),);
     },
      
    );
  }
}