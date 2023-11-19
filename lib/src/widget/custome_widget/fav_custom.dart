import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/widget/constant_widget/size/app_size.dart';
import 'package:tasks_flutter/src/widget/text_widget/home_text.dart';

class DetailCustom {
  static detailIcon() {
    return Container(
      height: 40.h,
      width: 75.w,
      decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20), topLeft: Radius.circular(20))),
      child: const Icon(
        CupertinoIcons.heart_fill,
        color: Colors.red,
        size: 24.0,
      ),
    );
  }

  static colorContainer(Color color) {
    return Container(
      width: 25.w,
      height: 25.h,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(50.r)),
    );
  }

  static SizedBox detailBox() {
    return SizedBox(
      width: double.infinity,
      height: 230.h,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeText.homeMainText("Wireless Controller for PS4"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DetailCustom.detailIcon(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 50.w),
              child: HomeText.optionText(
                  "Wireless Controller for PS4TM gives you what you want in your gaming from over precision control your games to sharing..."),
            ),
            AppSizes.smallHeightSizedBox,
            HomeText.seeMoreText("See More Detail >"),
          ],
        ),
      ),
    );
  }

  static detailCircle(String icon) {
    return Container(
      width: 35.w,
      height: 35.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          color: ColorConstants.mainScaffoldBackgroundColor),
      child: Center(
        child: SvgPicture.asset(
          icon,
          color: ColorConstants.subTextColor,
        ),
      ),
    );
  }
}
