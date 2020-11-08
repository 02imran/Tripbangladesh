import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_design_travel/drawer/drawer_menu.dart';
import 'package:final_design_travel/models/beach_model.dart';
import 'package:final_design_travel/models/popular_model.dart';
import 'package:final_design_travel/models/recommended_model.dart';
import 'package:final_design_travel/screens/selected_place_screen.dart';
import 'package:final_design_travel/tab_bar/main_tab_bar.dart';
import 'package:final_design_travel/widgets/botton_navigation_bar.dart';
import 'package:final_design_travel/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Page controller
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar('Search Item'),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBarTravel(),
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              //This is our Title

              Padding(
                padding: EdgeInsets.only(top: 48, left: 28),
                child: Text(
                  'Explore \nthe Nature',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              //Custom Tab bar with custom Indicator

              Container(
                height: 30,
                margin: EdgeInsets.only(left: 14, top: 28),
                child: DefaultTabController(
                  length: 4,
                  child: NewTabBar(),
                ),
              ),
              //List view widget with Page view
              //Recommended section
              Container(
                height: 218,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations.length,
                    (int index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SelectedPlaceScreen(
                                recommendedModel: recommendations[index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 28),
                        width: 330,
                        height: 218,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                recommendations[index].image),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 19,
                              left: 19,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.7),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaY: 19.2, sigmaX: 19.2),
                                  child: Container(
                                    height: 36,
                                    padding: EdgeInsets.only(
                                        left: 16.72, right: 14.4),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/svg/icon_location.svg'),
                                        SizedBox(width: 9),
                                        Text(
                                          recommendations[index].name,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //Dots indicator
              //Using Page Indicator Library
              Padding(
                padding: EdgeInsets.only(left: 28, top: 28),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendations.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Colors.white38,
                      dotColor: Colors.white38,
                      dotHeight: 4.8,
                      dotWidth: 6,
                      spacing: 5),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22, right: 10, top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular Categories',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              //List of popular category section
              Container(
                margin: EdgeInsets.only(top: 33),
                height: 45,
                child: ListView.builder(
                    itemCount: populars.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(left: 28, right: 9.6),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 19),
                        height: 45.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            color: Color(populars[index].color)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 19,
                            ),
                            Image.asset(
                              populars[index].image,
                              height: 16,
                            ),
                            SizedBox(
                              width: 19,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              //List view popular category section
              Container(
                margin: EdgeInsets.only(top: 28, bottom: 16),
                height: 124,
                child: ListView.builder(
                  itemCount: beaches.length,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 28, right: 12),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 124,
                      width: 188,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              CachedNetworkImageProvider(beaches[index].image),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
