import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';

class AppCustom {
  static divider() {
    return Divider(
      thickness: 2,
      endIndent: 50,
      indent: 50,
      color: ColorConstants.dividerColor,
    );
  }
}
