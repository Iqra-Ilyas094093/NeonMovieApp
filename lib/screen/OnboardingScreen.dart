import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neon_movie_app/screen/gradientCornerAvatar.dart';

import '../constant.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      backgroundColor: Constants.KBlackColor,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.08,
              left: -89,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    height: 166,
                    width: 166,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.35,
              right: -89,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  color: Constants.KGreenColor,
                  shape: BoxShape.circle,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 200, sigmaX: 100),
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
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.07),
                  UnicornOutlineButton(
                    height: screenWidth * 0.8,
                    width: screenWidth * 0.8,
                    padding: EdgeInsets.all(4),
                    strokeWidth: 4,
                    radius: screenWidth * 0.8,
                    gradient: LinearGradient(
                      colors: [
                        Constants.kPinkColor,
                        Constants.kPinkColor.withOpacity(0),
                        Constants.KGreenColor.withOpacity(0.1),
                        Constants.KGreenColor,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.2, 0.4, 0.6, 1],
                    ),
                    child: Container(
                      height: screenWidth * 0.8 -8, // 8 = padding(4) + strokeWidth(4)
                      width: screenWidth * 0.8 -8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/onBoardingAvatar.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(height: screenHeight * 0.09),
                  Text(
                    'Watch movies in \nVirtual Reality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.KWhiteColor.withOpacity(0.85),
                      fontWeight: FontWeight.w700,
                      fontSize: screenHeight <= 667 ? 18 : 34,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Text(
                    'Download and watch offline\nWherever you are',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.KWhiteColor.withOpacity(0.75),
                      fontWeight: FontWeight.w700,
                      fontSize: screenHeight <= 667 ? 12 : 16,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  UnicornOutlineButton(
                    height: 38,
                    padding: EdgeInsets.zero,
                    width: 160,
                    strokeWidth: 3,
                    radius: 20,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Constants.kPinkColor, Constants.KGreenColor],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Constants.kPinkColor.withOpacity(0.5),
                            Constants.KGreenColor.withOpacity(0.5),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14,
                            color: Constants.KWhiteColor,
                          ),
                        ),
                      ),
                      height: 40,
                      width: 160,
                    ),
                    onPressed: () {},
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                index == 0
                                    ? Constants.KGreenColor
                                    : Constants.KGreyColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
