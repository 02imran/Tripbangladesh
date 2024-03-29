import 'package:final_design_travel/maps/google_maps.dart';
import 'package:final_design_travel/profile/setting_profile.dart';
import 'package:final_design_travel/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    GoogleMaps(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bottomNavStyle =
      GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5))
      ]),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? new SvgPicture.asset('assets/svg/icon_home_colored.svg')
                : new SvgPicture.asset('assets/svg/icon_home.svg'),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new SvgPicture.asset('assets/svg/icon_heart_colored.svg')
                : new SvgPicture.asset('assets/svg/icon_heart.svg'),
            title: Text('Bookmark Location'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? new SvgPicture.asset('assets/svg/icon_plus_colored.svg')
                : new SvgPicture.asset('assets/svg/icon_plus.svg'),
            title: Text('Plus'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? new SvgPicture.asset(
                    'assets/svg/icon_notification_colored.svg')
                : new SvgPicture.asset('assets/svg/icon_notification.svg'),
            title: Text('Notification'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? new SvgPicture.asset('assets/svg/icon_user_colored.svg')
                : new SvgPicture.asset('assets/svg/icon_user.svg'),
            title: Text('User'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
      ),
    );
  }
}
