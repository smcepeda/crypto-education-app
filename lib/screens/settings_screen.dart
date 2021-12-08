import 'package:aha/screens/start_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Settings",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            CommunitySettings(),
            AccountSettings(),
            AppSettings(),
            SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}

class CommunitySettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: Text("Community",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
          child: Column(children: [
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage(
                    "assets/icons/star_settings.png",
                  ),
                  color: Colors.yellow,
                ),
                title: Text('Rate the app'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage(
                    "assets/icons/twitter_settings.png",
                  ),
                  color: Colors.blue,
                ),
                title: Text('Follow on Twitter'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                leading: ImageIcon(
                  AssetImage(
                    "assets/icons/share_settings.png",
                  ),
                  color: Colors.black,
                ),
                title: Text('Share with friends'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class AccountSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: Text("Account",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
          child: Column(children: [
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                title: Text('My Profile'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                  title: Text('Aha! Plus'),
                  trailing: Icon(Icons.navigate_next_outlined,
                      color: Color(0xFF757C8E)),
                  onTap: () {}),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                title: Text('Restore Purchases'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                  title: Text('Log Out', style: TextStyle(color: Colors.red)),
                  trailing: Icon(Icons.navigate_next_outlined,
                      color: Color(0xFF757C8E)),
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => StartScreen(),
                      ),
                    );
                  }),
            ),
          ]),
        ),
      ],
    );
  }
}

class AppSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 25, top: 20),
          child: Text("App",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20.0, top: 10, right: 20.0),
          child: Column(children: [
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                title: Text('Help Center & Support'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                title: Text('Terms of Use'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  side: BorderSide(width: 1, color: Color(0XFFE4E6EA))),
              child: ListTile(
                title: Text('Privacy'),
                trailing: Icon(Icons.navigate_next_outlined,
                    color: Color(0xFF757C8E)),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
