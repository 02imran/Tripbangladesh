import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_design_travel/models/recommended_model.dart';
import 'package:final_design_travel/screens/selected_place_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 218,
      margin: EdgeInsets.only(top: 16),
      child: PageView(
        physics: BouncingScrollPhysics(),
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
                  image:
                      CachedNetworkImageProvider(recommendations[index].image),
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
                        filter: ImageFilter.blur(sigmaY: 19.2, sigmaX: 19.2),
                        child: Container(
                          height: 36,
                          padding: EdgeInsets.only(left: 16.72, right: 14.4),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/svg/icon_location.svg'),
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
    );
  }
}
