import 'package:aha/screens/course_overview_screen.dart';
import 'package:aha/screens/dashboard_screen.dart';
import 'package:aha/screens/portfolio_screen.dart';
import 'package:aha/screens/settings_screen.dart';
import 'package:aha/services/database_service.dart';
import 'package:aha/services/entities.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: databaseService.getProfileStream(),
        builder: (context, AsyncSnapshot<Profile> snapshot) {
          if (snapshot.hasData) {
            Profile profile = snapshot.data!;

            List<Widget> _pages = <Widget>[
              DashboardScreen(),
              PortfolioScreen(),
              CourseOverviewScreen(),
              ImageIcon(
                AssetImage("assets/icons/category.png"),
                color: Color(0xFF757C8E),
              ),
              SettingsScreen()
            ];

            return Scaffold(
              body: Center(
                child: _pages.elementAt(_selectedIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Color(0XFF458CFF),
                unselectedItemColor: Color(0xFF757C8E),
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/icons/home.png"),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/icons/work.png"),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/icons/document.png"),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/icons/category.png"),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/icons/user.png"),
                      ),
                      label: ''),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            );
          }

          return Center(child: CircularProgressIndicator());
        });
  }
}
