import 'package:aha/screens/main_screen.dart';
import 'package:aha/screens/onboarding_screen_birthday.dart';
import 'package:aha/screens/onboarding_screen_notifications.dart';
import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';
import 'package:aha/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardingScreenCryptocurrencies extends StatefulWidget {
  @override
  OnboardingScreenCryptocurrenciesState createState() =>
      OnboardingScreenCryptocurrenciesState();
}

class OnboardingScreenCryptocurrenciesState
    extends State<OnboardingScreenCryptocurrencies> {
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
                      Text("Do you already own any cryptocurrencies?",
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
                                  //     isSelected1 ? Colors.blue : Colors.blue,
                                  title: Center(child: Text("Yes")),
                                  onTap: () {
                                    // profile.goals = Goals.learnBasics;
                                    setState(() {
                                      isSelected1 = !isSelected1;
                                    });
                                    profile.hasCrypto = true;
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
                                  // leading: Icon(Icons.check_circle,
                                  //     color: Color(0XFF15E3B3)),
                                  // tileColor:
                                  //     isSelected2 ? Colors.white : Colors.blue,
                                  title: Center(child: Text("No")),
                                  onTap: () {
                                    // profile.goals = Goals.learnBasics;
                                    setState(() {
                                      isSelected2 = !isSelected2;
                                    });
                                    profile.hasCrypto = false;
                                    databaseService.updateProfile(profile);
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
              ]),
              bottomNavigationBar: BottomAppBar(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: PrimaryButton(
                    minWidth: 320,
                    maxWidth: 320,
                    text: "Complete",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  OnboardingScreenNotifications()));
                    },
                  ),
                ),
                elevation: 0,
              ),
            );
          }
          return Text("Loading2");
        });
  }
}
