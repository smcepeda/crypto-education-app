import 'package:aha/screens/login_screen.dart';
import 'package:aha/screens/onboarding_screen_birthday.dart';
import 'package:aha/screens/register_screen.dart';
import 'package:aha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Color(0XFF01203A), Color(0XFF004B89)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(top: 220),
                        child: Image(
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width * (5 / 10),
                          image: AssetImage("assets/images/aha_logo.png"),
                        )),
                  ),
                  SizedBox(
                    height: 230,
                    width: MediaQuery.of(context).size.width * (7.5 / 10),
                    child: Text(
                      "Lerne mit der Aha! App die Grundlagen von Kryptowährungen",
                      style: TextStyle(
                          fontSize: 17, height: 1.4, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              top: false,
              minimum: const EdgeInsets.only(bottom: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width * (7.5 / 10),
                    child: Text(
                      "Indem du fortfährst, akzeptierst du unsere Geschäftsbedingungen und Datenschutzrichtlinien",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 10,
                          height: 1.4,
                          color: Color(0xFFC9C9C9)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: PrimaryButton(
                        minWidth: 320,
                        maxWidth: 320,
                        text: "Jetzt loslegen",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ));
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 14),
                      child: Text("Ich habe ein Konto",
                          style: TextStyle(
                              color: Color(0xFFAFB3C1),
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
