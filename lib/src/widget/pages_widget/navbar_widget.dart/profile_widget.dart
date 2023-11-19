import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_flutter/src/constant/app_constant.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/widget/constant_widget/size/app_size.dart';
import 'package:tasks_flutter/src/widget/custome_widget/app_custom.dart';
import 'package:tasks_flutter/src/widget/custome_widget/profile_custom/profile_custom.dart';
import 'package:tasks_flutter/src/widget/text_widget/home_text.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(50.r),
                    ),
                    color: ColorConstants.mainTextColor),
              ),
              ProfileCustom.profileImage(),
              AppSizes.mediumHeightSizedBox,
            ],
          ),
          HomeText.homeMainText("Meeran AlFalaileh"),
          AppCustom.divider(),
          TextButton(
              onPressed: () {}, child: HomeText.optionText("Edit Profile")),
          SizedBox(
            width: 200,
            height: 150,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  return ProfileCustom.profileWidget(
                    AppConstant.profile[index],
                  );
                }),
                separatorBuilder: ((context, index) {
                  return AppSizes.mediumHeightSizedBox;
                }),
                itemCount: AppConstant.profile.length),
          ),
        ],
      ),
    );
  }
}
