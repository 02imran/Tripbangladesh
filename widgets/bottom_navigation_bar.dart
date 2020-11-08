import 'package:final_design_travel/maps/google_maps.dart';
import 'package:final_design_travel/profile/main_profile_screen.dart';
import 'package:final_design_travel/profile/setting_profile.dart';
import 'package:final_design_travel/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  TabController tabController;

  static int _selectedTab = 0;
  final List<Widget> _children = [
    new HomeScreen(),
    new GoogleMaps(),
    new SettingsPage(),
    new MainProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffFF5555),
      ),
      home: Scaffold(
        body: _children[_selectedTab], // new
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            new HomeScreen();
            new GoogleMaps();
            new SettingsPage();
            new MainProfileScreen();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add_shopping_cart),
              Text(
                "CART",
                style: TextStyle(fontSize: 8.0),
              ),
            ],
          ),
          backgroundColor: Colors.indigo[900],
          foregroundColor: Colors.white,
          elevation: 2.0,
        ),
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          notchMargin: 10.0,
          shape: CircularNotchedRectangle(),
          child: SizedBox(
            height: 80,
            child: Theme(
              data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Colors.white,
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.amberAccent,
                  textTheme: Theme.of(context)
                      .textTheme
                      .copyWith(caption: new TextStyle(color: Colors.grey))),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: onTabTapped,
                currentIndex: _selectedTab,
                fixedColor: Colors.amberAccent,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text(
                      'HOME',
                      style: TextStyle(fontSize: 10.0),
                    ),
                    activeIcon: Column(
                      children: <Widget>[
                        Icon(Icons.local_offer),
                      ],
                    ),
                  ),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/images/ic_bottom_offer.svg",
                        height: 25,
                        color: Colors.grey,
                      ),
                      title: Text('OFFERS', style: TextStyle(fontSize: 10.0))),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.info_outline),
                      title: Text('HELP', style: TextStyle(fontSize: 10.0))),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.people),
                      title: Text('PROFILE', style: TextStyle(fontSize: 10.0))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
}
