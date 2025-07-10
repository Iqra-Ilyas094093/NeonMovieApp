import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:neon_movie_app/constant.dart';

class Moviedetailscreen extends StatefulWidget {
  const Moviedetailscreen({super.key});

  @override
  State<Moviedetailscreen> createState() => _MoviedetailscreenState();
}

class _MoviedetailscreenState extends State<Moviedetailscreen> {
  double rating = 4.2;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Constants.KBlackColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black26],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.5,
                width: screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/DetailEternal.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 3, color: Colors.white),
                      ),
                      child: Image.asset('assets/icons/back.png'),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 3, color: Colors.white),
                      ),
                      child: Image.asset('assets/icons/details.png'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 18,
              top: screenHeight * 0.42,
              child: Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Constants.kPinkColor, Constants.KGreenColor],
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.KGreyColor,
                  ),
                  child: Image.asset('assets/icons/play.png'),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.5,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.5,
                color: Colors.black,
                child: Column(
                  children: [
                    Text(
                      'Eternals',
                      style: TextStyle(
                        color: Constants.KWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '2021 Action Adventure Fantasy 2h 36m',
                      style: TextStyle(color: Constants.KGreyColor,fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    RatingBarIndicator(
                      itemSize: 25,
                      rating: rating,
                      itemCount: 5,
                      direction: Axis.horizontal,
                      unratedColor: Constants.KGreyColor,
                      itemBuilder:
                          (context, index) =>
                              Icon(Icons.star, color: Colors.amber),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'Here are we going to add the movie detials in this container and putting them from model',
                        softWrap: true,
                        style: TextStyle(
                          color: Constants.KGreyColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Divider(color: Colors.grey.shade800,),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
