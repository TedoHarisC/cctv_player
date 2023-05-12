import 'dart:async';

import 'package:cctv_player_project/pages/home_page.dart';
import 'package:cctv_player_project/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () async {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        (Route<dynamic> route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 140, height: 140),
            const SizedBox(height: 20),
            Text(
              'CCTV Player App',
              style: GoogleFonts.playfairDisplay().copyWith(
                fontSize: 34,
                fontWeight: bold,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
