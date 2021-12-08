import 'package:aha/screens/main_screen.dart';
import 'package:aha/screens/onboarding_screen_birthday.dart';
import 'package:aha/services/authentication_service.dart';
import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Function to authenticate, call callback to save the user and navigate to next page
  void doRegister(BuildContext context) async {
    final user = await authenticationService.register(
        emailController.text, passwordController.text);

    if (user != null) {
      // Now create default Profile
      await databaseService.updateProfile(Profile());

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreenBirthday(),
          ));
    } else {
      _showAuthFailedDialog(context);
    }
  }

  // Show error if login unsuccessfull
  void _showAuthFailedDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Could not log in'),
          content: new Text('Double check your credentials and try again'),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Please register')),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Email'),
                    )),
                Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                    )),
                RaisedButton(
                  // Calling the doLogin function on press
                  onPressed: () => doRegister(context),
                  child: Text('REGISTER'),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
            )));
  }
}
