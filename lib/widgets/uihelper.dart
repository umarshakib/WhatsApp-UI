import 'package:flutter/material.dart';

class UiHelper {
  static customButton({
    required VoidCallback callBack,
    required String buttonName,
  }) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: callBack,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(40),
          ),
        ),
        child: Text(buttonName, style: TextStyle(color: Colors.white)),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Colors.black,
        fontWeight: fontweight,
      ),
    );
  }
}
