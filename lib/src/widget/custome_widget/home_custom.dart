import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/model/container_model.dart';
import 'package:tasks_flutter/src/widget/text_widget/home_text.dart';

class HomeCustom {
  static searchBar() {
    return SizedBox(
      width: 220,
      height: 50,
      child: TextField(
          decoration: InputDecoration(
        hintText: 'Search Product',
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
        filled: true,
        fillColor: Colors.grey[200],
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[200]!,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
      )),
    );
  }

  static couponContainer() {
    return Container(
      width: 350,
      height: 110,
      decoration: BoxDecoration(
          color: ColorConstants.couponColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeText.couponSecondText("A Summer Surpise"),
            HomeText.couponMainText("Cashback 20%")
          ],
        ),
      ),
    );
  }

  static appImage(String title) {
    return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.mainScaffoldBackgroundColor),
        child: Image.asset(title));
  }

  static optionWidget({required ContainerModel container}) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstants.dividerColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SvgPicture.asset(container.image),
          ),
        ),
        HomeText.optionText(container.mainText!),
      ],
    );
  }

  static specialContainer({required ContainerModel container}) {
    return GestureDetector(
      onTap: container.onTap,
      child: SizedBox(
        width: 250,
        height: 120,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                container.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeText.couponMainText(container.mainText!),
                  HomeText.couponSecondText(container.subText!)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  static GestureDetector appBarIcon({required ContainerModel container}) {
    return GestureDetector(
      onTap: container.onTap,
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: ColorConstants.borderColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              container.image,
            ),
          )),
    );
  }

  static Row titleRow(String mainText, VoidCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeText.homeMainText("Special for you"),
        GestureDetector(
          onTap: onTap,
          child: HomeText.optionText("see more"),
        ),
      ],
    );
  }
}
