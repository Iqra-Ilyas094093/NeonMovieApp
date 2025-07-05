import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neon_movie_app/components/maskImage.dart';
import 'package:neon_movie_app/constant.dart';
import 'package:neon_movie_app/models/movie.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: Constants.KBlackColor,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: -60,
              left: -50,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor.withOpacity(0.5),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 166, sigmaY: 166),
                  child: Container(
                    height: 166,
                    width: 166,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 250,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Constants.KGreenColor.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 200, sigmaX: 200),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 10,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Constants.kCyanColor.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: ListView(
                primary: true,
                children: [
                  SizedBox(height: 24),
                  Text(
                    'What would you\nlike to watch?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.KWhiteColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(
                        controller: searchController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Constants.KGreyColor.withOpacity(0.2),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Constants.KGreyColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.only(top: 2),
                          prefixIconColor: Constants.KGreyColor,
                          suffixIconColor: Constants.KGreyColor,
                          suffixIcon: Icon(Icons.mic),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'New movies',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Constants.KWhiteColor,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      itemCount: newMovies.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = 'assets/images/mask_firstIndex.png';
                        } else if (index == newMovies.length - 1) {
                          mask = 'assets/images/mask_lastIndex.png';
                        } else {
                          mask = 'assets/images/mask.png';
                        }
                        print(mask);
                        print('loading');
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(left: index == 0 ? 20 : 0),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: newMovies[index].moviePoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Upcoming Movies',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Constants.KWhiteColor,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: upcomingMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = 'assets/images/mask_firstIndex.png';
                        } else if (index == upcomingMovies.length - 1) {
                          mask = 'assets/images/mask_lastIndex.png';
                        } else {
                          mask = 'assets/images/mask.png';
                        }
                        return Container(
                          margin: EdgeInsets.only(left: index==0?20:0),
                          height: 160,
                          width: 142,
                          child: MaskedImage(
                            asset: upcomingMovies[index].moviePoster,
                            mask: mask,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
