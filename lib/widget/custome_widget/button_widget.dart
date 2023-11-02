import 'package:flutter/material.dart';
import 'package:tasks_flutter/constant/colors_const.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onTap, required this.title});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 325,
        height: 60,
        decoration: BoxDecoration(
            color: ColorConstants.mainTextColor,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: ColorConstants.mainScaffoldBackgroundColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
