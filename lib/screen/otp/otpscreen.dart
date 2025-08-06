import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screen/profile/profilescreen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class OtpScreen extends StatelessWidget {
  String yourphonenumber;

  OtpScreen({super.key, required this.yourphonenumber});

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.customText(
              text: "Verifying your number",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 40),
            UiHelper.customText(
              text: "You've tried to register +91${yourphonenumber}",
              height: 16,
            ),
            UiHelper.customText(
              text: "recently. Wait before requesting an sms or a call.",
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(text: "With your code.", height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.customText(
                    text: " Wrong number?",
                    height: 16,
                    color: Color(0XFF00A884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customContainer(controller1),
                SizedBox(width: 10),
                UiHelper.customContainer(controller2),
                SizedBox(width: 10),
                UiHelper.customContainer(controller3),
                SizedBox(width: 10),
                UiHelper.customContainer(controller4),
                SizedBox(width: 10),
                UiHelper.customContainer(controller5),
                SizedBox(width: 10),
                UiHelper.customContainer(controller6),
              ],
            ),
            SizedBox(height: 40),
            UiHelper.customText(
              text: "Didn’t receive code?",
              height: 15,
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        callBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        buttonName: "next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
