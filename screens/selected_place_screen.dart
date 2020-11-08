import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_design_travel/models/recommended_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SelectedPlaceScreen extends StatelessWidget {
  final _pageController = PageController();

  final RecommendedModel recommendedModel;

  SelectedPlaceScreen({Key key, @required this.recommendedModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            // PageView for Image
            PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                recommendedModel.images.length,
                (int index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          recommendedModel.images[index]),
                    ),
                  ),
                ),
              ),
            ),

            // Custom Button
            SafeArea(
              child: Container(
                height: 57.6,
                margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 57.6,
                        width: 57.6,
                        padding: EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          color: Colors.black12,
                        ),
                        child: Icon(
                          Icons.keyboard_backspace_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.black12,
                      ),
                      child: SvgPicture.asset('assets/svg/icon_heart_fill.svg'),
                    )
                  ],
                ),
              ),
            ),

            // Content
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 346.8,
                margin: EdgeInsets.only(left: 28.8, bottom: 48, right: 28.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: _pageController,
                          count: recommendedModel.images.length,
                          effect: ExpandingDotsEffect(
                              activeDotColor: Colors.white,
                              dotColor: Colors.white70,
                              dotHeight: 4.8,
                              dotWidth: 6,
                              spacing: 4.8),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.black12,
                            onPressed: () {
                              Share.share('here is this link',
                                  subject: 'This is Sub');
                            },
                            child: Icon(
                              Icons.share,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 19.2),
                      child: Text(
                        recommendedModel.tagLine,
                        maxLines: 2,
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 42.6,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 19.2),
                      child: Text(
                        recommendedModel.description,
                        maxLines: 7,
                        style: GoogleFonts.lato(
                            fontSize: 19.2,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
