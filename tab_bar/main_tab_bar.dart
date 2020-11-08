import 'package:final_design_travel/widgets/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    return Scaffold(
      body: Container(
        child: new TabBar(
          labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white30,
          labelStyle: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle:
              GoogleFonts.lato(fontWeight: FontWeight.w700, fontSize: 14),
          indicator: RoundedRectangleTabIndicator(
              color: Colors.black, weight: 2.4, width: 14.4),
          tabs: [
            Tab(
              child: Container(
                child: Text('Recommended'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('Popular'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('New Destination'),
              ),
            ),
            Tab(
              child: Container(
                child: Text('New Places'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
