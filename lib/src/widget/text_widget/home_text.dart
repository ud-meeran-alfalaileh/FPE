import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';

couponMainText(String title) {
  return Text(title,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: ColorConstants.mainScaffoldBackgroundColor,
          fontSize: 30,
          fontWeight: FontWeight.bold));
}

couponSecondText(String title) {
  return Text(title,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: ColorConstants.mainScaffoldBackgroundColor,
        fontSize: 18,
      ));
}

optionText(String title) {
  return Text(
    title,
    style: TextStyle(
      color: ColorConstants.subTextColor,
      fontSize: 18,
    ),
    textAlign: TextAlign.center,
  );
}

homeMainText(title) {
  return Text(
    title,
    style: const TextStyle(
        color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
  );
}

productText(title) {
  return Text(
    title,
    style: const TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
  );
}

priceText(title) {
  return Text(
    title,
    style: TextStyle(
        color: ColorConstants.mainTextColor,
        fontSize: 25,
        fontWeight: FontWeight.w500),
  );
}
