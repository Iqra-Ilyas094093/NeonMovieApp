import 'package:flutter/material.dart';

class Moviedetailscreen extends StatelessWidget {
  const Moviedetailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Color(0xFF1919b)],
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
                    image: DecorationImage(image: AssetImage('assets/images/DetailEternal'))
                  ),
            ))
          ],
        ),
      ),
    );
  }
}
