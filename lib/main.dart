import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_movie_app/screen/HomeScreen.dart';
import 'package:neon_movie_app/screen/OnboardingScreen.dart';
import 'package:neon_movie_app/screen/movieDetailScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      home: Moviedetailscreen(),
    );
  }
}