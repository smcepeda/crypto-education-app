import 'package:aha/screens/main_screen.dart';
import 'package:aha/screens/onboarding_screen_cryptocurrencies.dart';
import 'package:aha/screens/onboarding_screen_goal.dart';
import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';
import 'package:aha/widgets/buttons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OnboardingScreenBirthday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return StreamBuilder(
        stream: databaseService.getProfileStream(),
        builder: (context, AsyncSnapshot<Profile> snapshot) {
          if (snapshot.hasData) {
            Profile profile = snapshot.data!;

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Color(0xFF19191B)),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: <Widget>[
                  SizedBox(width: 80),
                  Flexible(
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          minHeight: 6,
                          backgroundColor: Color(0xFFF5F5F5),
                          value: 1 / 4,
                          valueColor: AlwaysStoppedAnimation(Color(0xFF15E3B3)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                ],
              ),
              body: Row(children: [
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text("What is your birthday?",
                        style: TextStyle(fontSize: 24)),
                    SizedBox(height: 15),
                    Text(
                        "We need this to personalize your learning experience"),
                    Spacer(),
                    Container(
                      height: 200,
                      width: width - 40,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: DateTime(1999, 1, 1),
                        onDateTimeChanged: (DateTime newDateTime) {
                          profile.birthdayDate =
                              Timestamp.fromDate(newDateTime);
                          databaseService.updateProfile(profile);
                        },
                      ),
                    ),
                  ],
                ),
              ]),
              bottomNavigationBar: BottomAppBar(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 20),
                    child: PrimaryButton(
                      minWidth: 320,
                      maxWidth: 320,
                      text: "Next",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnboardingScreenGoal(),
                            ));
                      },
                    ),
                  ),
                ),
                elevation: 0,
              ),
            );
          }
          print(snapshot);
          return Text("Loading1");
        });
  }
}
