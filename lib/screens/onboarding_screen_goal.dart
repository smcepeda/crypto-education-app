import 'package:aha/screens/main_screen.dart';
import 'package:aha/screens/onboarding_screen_birthday.dart';
import 'package:aha/screens/onboarding_screen_cryptocurrencies.dart';
import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';
import 'package:aha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardingScreenGoal extends StatefulWidget {
  @override
  OnboardingScreenGoalState createState() => OnboardingScreenGoalState();
}

class OnboardingScreenGoalState extends State<OnboardingScreenGoal> {
  bool isSelected1 = false;
  bool isSelected2 = false;

  @override
  void initState() {
    super.initState();
    bool isSelected1;
    bool isSelected2;
  }

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
                          value: 2 / 4,
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
                      Text("What is your main goal with the Aha! app?",
                          style: TextStyle(fontSize: 24)),
                      Spacer(),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20.0, top: 10, right: 20.0),
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: BorderSide(
                                  width: 1, color: Color(0XFFEBECEF))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                  // leading: Icon(Icons.check_circle,
                                  //     color: Color(0XFF15E3B3)),
                                  // tileColor:
                                  //     isSelected1 ? Colors.white : Colors.blue,
                                  title: Center(
                                      child:
                                          Text("Learn the basics of crypto")),
                                  onTap: () {
                                    // profile.goals = Goals.learnBasics;
                                    setState(() {
                                      isSelected1 = !isSelected1;
                                    });
                                    profile.goals = "learnBasics";
                                    databaseService.updateProfile(profile);
                                  }),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20.0, top: 10, right: 20.0),
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                              side: BorderSide(
                                  width: 1, color: Color(0XFFEBECEF))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ListTile(
                                  // tileColor:
                                  //     isSelected2 ? Colors.white : Colors.blue,
                                  title: Center(
                                      child: Text("Do my first investment")),
                                  onTap: () {
                                    setState(() {
                                      isSelected2 = !isSelected2;
                                    });
                                    // profile.goals = Goals.firstInvestment;
                                    profile.goals = "firstInvestment";
                                    databaseService.updateProfile(profile);
                                  }),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20),
              ]),
              bottomNavigationBar: BottomAppBar(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                  child: PrimaryButton(
                    minWidth: 320,
                    maxWidth: 320,
                    text: "Complete",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  OnboardingScreenCryptocurrencies()));
                    },
                  ),
                ),
                elevation: 0,
              ),
            );
          }
          print("snapshot: " + snapshot.toString());
          return Column(children: [Text("Loading3")]);
        });
  }
}
