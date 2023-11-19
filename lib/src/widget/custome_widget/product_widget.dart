import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/model/container_model.dart';
import 'package:tasks_flutter/src/widget/text_widget/home_text.dart';

class ProductWidget extends StatefulWidget {
  ProductWidget({super.key, required this.container});
  ContainerModel container;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  RxString image = "assets/icons/Heart Icon_2.svg".obs;
  RxBool isFavorite = false.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 150.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: widget.container.onTap,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorConstants.borderColor),
              child: Image.asset(
                widget.container.image,
                width: 100,
              ),
            ),
          ),
          HomeText.productText(
            widget.container.mainText,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeText.priceText(widget.container.subText),
              GestureDetector(
                onTap: () {
                  isFavorite.value = !isFavorite.value;
                  image.value = isFavorite.value
                      ? "assets/icons/red_heart.svg"
                      : "assets/icons/Heart Icon_2.svg";
                },
                child: Container(
                  height: 35.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Obx(() => SvgPicture.asset(image.value)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
