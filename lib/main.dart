import 'package:aha/screens/main_screen.dart';
import 'package:aha/screens/start_screen.dart';
import 'package:aha/services/authentication_service.dart';
import 'package:aha/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AhaApp());
}

class AhaApp extends StatelessWidget {
  const AhaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: UpliftThemes.light(),
        home: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Scaffold(
                body: Center(child: Text(snapshot.error.toString())),
              );
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              print("snapshot-main: " + snapshot.toString());
              return Center(child: CircularProgressIndicator());

              // return SplashScreen(
              //     seconds: 1,
              //     image: Image.asset('assets/images/aha_logo.png'),
              //     photoSize: 100.0,
              //     backgroundColor: Color(0xFF01203A),
              //     styleTextUnderTheLoader: TextStyle(),
              //     navigateAfterSeconds: '',
              //     loaderColor: const Color(0xFF00CC91));
            }

            if (authenticationService.getCurrentUser() == null) {
              return StartScreen();
            } else {
              return MainScreen();
            }
          },
        ));
  }
}
