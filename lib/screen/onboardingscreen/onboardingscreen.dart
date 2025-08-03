import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/login/loginscreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read out", height: 14),
                UiHelper.CustomText(
                  text: " Privacy Policy.",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
                UiHelper.CustomText(
                  text: "Tap ''Agree and Continue''",
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "to accept the", height: 14),
                UiHelper.CustomText(
                  text: " Teams of Service.",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        callBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        buttonName: "Agree and Continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
