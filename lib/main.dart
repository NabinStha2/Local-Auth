import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localauth_fingerprint/local_auth/homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // await storage.deleteAll(
  //   aOptions: AndroidOptions(),
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Auth App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans(
          fontSize: 16.0,
        ).fontFamily,
      ),
      home: HomePage(),
    );
  }
}
