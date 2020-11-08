import 'package:final_design_travel/drawer/share_link.dart';
import 'package:final_design_travel/maps/google_maps_new.dart';
import 'package:final_design_travel/profile/main_profile_screen.dart';
import 'package:final_design_travel/screens/SignUp.dart';
import 'package:final_design_travel/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Trip Bangladesh',
                style: GoogleFonts.lato(fontSize: 30),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1515326786371-2010015bdf52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=753&q=80'),
                  fit: BoxFit.cover),
              color: Colors.teal.shade600,
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.black12,
            ),
            title: Text(
              'Home',
              style: GoogleFonts.lato(fontSize: 20),
            ), //Home menu
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.location_city,
              color: Colors.black12,
            ),
            title: Text(
              'Division Wise Tour ',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.category,
              color: Colors.black12,
            ),
            title: Text(
              'Category Wise Tour ',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on,
              color: Colors.black12,
            ),
            title: Text(
              'Map ',
              style: GoogleFonts.lato(fontSize: 20),
            ), //Division wise Places
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NewGoogleMaps();
              }));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.bookmarks_rounded,
              color: Colors.black12,
            ),
            title: Text(
              'Bookmark Location',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          //Here is a divider for divide the menu in two parts

          Divider(
            color: Colors.black,
            thickness: 0.2,
          ),
          ListTile(
            leading: const Icon(
              Icons.login,
              color: Colors.black12,
            ),
            title: Text(
              'Log In',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUp();
              }));

              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: Colors.black12,
            ),
            title: Text(
              'Profile ',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainProfileScreen();
              }));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.backup_rounded,
              color: Colors.black12,
            ),
            title: Text(
              'Weather ',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Colors.black,
            thickness: 0.2,
          ),

          /* This is another divider
            which divide categories from profile
             */

          ListTile(
            title: Text(
              'Categories',
              style:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          /* This is for category menu

             */

          ListTile(
            leading: const Icon(
              Icons.restaurant,
              color: Colors.black12,
            ),
            title: Text(
              'Restaurants',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.food_bank_outlined,
              color: Colors.black12,
            ),
            title: Text(
              'Banks',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black12,
            ),
            title: Text(
              'Shops',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.bus_alert,
              color: Colors.black12,
            ),
            title: Text(
              'Bus Information',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            color: Colors.teal.shade900,
            thickness: 0.5,
          ),
          /* This is our Last divider in
            this menu
             */
          ListTile(
            title: Text(
              'Share',
              style:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.black12,
            ),
            title: Text(
              'Share',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return ShareButton();
              }));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.star_border,
              color: Colors.black12,
            ),
            title: Text(
              'Rate Us',
              style: GoogleFonts.lato(fontSize: 20),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
