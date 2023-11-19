import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/src/constant/app_constant.dart';
import 'package:tasks_flutter/src/getx/detail_controller.dart';
import 'package:tasks_flutter/src/widget/constant_widget/size/app_size.dart';
import 'package:tasks_flutter/src/widget/custome_widget/appBar_widget/detail_appbar.dart';
import 'package:tasks_flutter/src/widget/custome_widget/button_widget.dart';
import 'package:tasks_flutter/src/widget/custome_widget/fav_custom.dart';

import '../../../constant/colors_const.dart';

class DetailWidget extends StatelessWidget {
  final DetailController imageController = Get.put(DetailController());

  DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: ColorConstants.borderColor,
          elevation: 0,
          pinned: true,
          centerTitle: false,
          expandedHeight: 300,
          flexibleSpace: const FlexibleSpaceBar(
            background: DetailAppBar(),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              DetailCustom.detailBox(),
              Container(
                width: double.infinity.w,
                height: 189.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35.r),
                        topLeft: Radius.circular(35.r)),
                    color: const Color(0xffF6F7F9)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 150.w,
                            height: 25.h,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: ((context, index) {
                                  return DetailCustom.colorContainer(
                                      AppConstant.color[index]);
                                }),
                                separatorBuilder: ((context, index) {
                                  return AppSizes.smallWidthSizedBox;
                                }),
                                itemCount: AppConstant.color.length),
                          ),
                          const Spacer(),
                          DetailCustom.detailCircle(
                              "assets/icons/Plus Icon.svg"),
                          AppSizes.smallWidthSizedBox,
                          DetailCustom.detailCircle("assets/icons/remove.svg"),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 120.h,
                      decoration: BoxDecoration(
                        color: ColorConstants.mainScaffoldBackgroundColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(35.r)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(38.0),
                        child: Button(
                          onTap: () {},
                          title: 'Add to Cart',
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
