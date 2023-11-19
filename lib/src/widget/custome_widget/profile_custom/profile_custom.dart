import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_flutter/src/model/botton_model.dart';
import 'package:tasks_flutter/src/widget/text_widget/home_text.dart';

class ProfileCustom {
  static profileImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Center(
        child: SizedBox(
          width: 150.w,
          height: 150.h,
          child: ClipRRect(
            child: Image.asset("assets/Profile Image.png"),
          ),
        ),
      ),
    );
  }

  static profileWidget(Botton botton) {
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeText.couponMainText(botton.title),
        const Icon(Icons.arrow_right_outlined)
      ],
    );
  }
}
