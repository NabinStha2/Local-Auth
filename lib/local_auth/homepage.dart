import 'package:flutter/material.dart';
import 'package:localauth_fingerprint/local_auth/finger_print/fingerprint_page.dart';
import 'package:localauth_fingerprint/main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(height: 48),
                buildLogoutButton(context)
              ],
            ),
          ),
        ),
      );

  Widget buildLogoutButton(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(50),
        ),
        child: Text(
          'Logout',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => FingerPrintPage()),
        ),
      );
}
