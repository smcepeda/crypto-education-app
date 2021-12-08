import 'package:aha/screens/main_screen.dart';
import 'package:aha/screens/onboarding_screen_birthday.dart';
import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';
import 'package:aha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardingScreenNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                          value: 3 / 4,
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Text("Learn more with notifications enabled",
                          style: TextStyle(fontSize: 24)),
                      SizedBox(height: 15),
                      Text("Get reminders about new classes"),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ]),
              bottomNavigationBar: BottomAppBar(
                child: Row(children: [
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: PrimaryButton(
                      color: Colors.grey,
                      minWidth: 120,
                      maxWidth: 120,
                      text: "Later",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 24),
                    child: PrimaryButton(
                      minWidth: 200,
                      maxWidth: 200,
                      text: "Activate",
                      onTap: () {
                        profile.notificationEnabled = true;
                        databaseService.updateProfile(profile);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                    ),
                  ),
                ]),
                elevation: 0,
              ),
            );
          }
          return Text("Loading2");
        });
  }
}
