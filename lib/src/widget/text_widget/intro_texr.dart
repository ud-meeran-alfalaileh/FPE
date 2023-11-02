import 'package:flutter/material.dart';

import '../../constant/colors_const.dart';

introMainText(String title) {
  return Text(title,
      style: TextStyle(
          color: ColorConstants.mainTextColor,
          fontSize: 40,
          fontWeight: FontWeight.bold));
}

secondIntroText(String title) {
  return Text(
    title,
    style: TextStyle(
        color: ColorConstants.subTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}
