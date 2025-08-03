import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/onboardingscreen/onboardingscreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp1.png"),
            SizedBox(height: 20),
            UiHelper.customText(
              text: "WhatsApp",
              height: 18,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
