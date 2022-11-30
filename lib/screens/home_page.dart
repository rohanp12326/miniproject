import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:note_app_demo/screens/login_page.dart';
import 'package:note_app_demo/utilities/logged_in_widgit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return LogedInWidgit();
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Something went Wrong!'),
              );
            } else {
              return LOGIN_PAGE();
            }
          },
        ),
      );
}
