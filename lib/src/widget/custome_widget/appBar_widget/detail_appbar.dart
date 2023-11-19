import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/src/getx/detail_controller.dart';
import 'package:tasks_flutter/src/widget/constant_widget/size/app_size.dart';
import 'package:tasks_flutter/src/widget/custome_widget/home_custom.dart';

import '../../../constant/app_constant.dart';

class DetailAppBar extends GetView<DetailController> {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DetailController());

    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppConstant.imagePaths[controller.selectedImageIndex.value],
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SizedBox(
                height: 50,
                width: 350,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            controller.changeImage(index);
                          },
                          child: HomeCustom.appImage(
                              AppConstant.imagePaths[index]),
                        ),
                    separatorBuilder: (context, index) =>
                        AppSizes.smallWidthSizedBox,
                    itemCount: AppConstant.imagePaths.length),
              ),
            ),
          ],
        ));
  }
}
