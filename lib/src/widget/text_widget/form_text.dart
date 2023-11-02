import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';

mainText(String title) {
  return Text(title,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: ColorConstants.blackTextColor,
          fontSize: 35,
          fontWeight: FontWeight.bold));
}

subText(String title) {
  return Text(
    title,
    style: TextStyle(
      color: ColorConstants.subTextColor,
      fontSize: 20,
    ),
    textAlign: TextAlign.center,
  );
}
