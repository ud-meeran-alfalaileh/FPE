import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/src/constant/app_constant.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/view/form_view/register_page.dart';
import 'package:tasks_flutter/src/widget/custome_widget/button_widget.dart';
import 'package:tasks_flutter/src/widget/text_widget/intro_texr.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            introMainText("TOKOTO"),
            secondIntroText("Welcome to Tokoto, Let's shop!"),
            const SizedBox(
              height: 120,
            ),
            CarouselSlider(
              items: AppConstant.image,
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                height: 250.0,
                onPageChanged: (index, reason) {
                  currentIndex.value = index;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: AppConstant.image.map((item) {
                int index = AppConstant.image.indexOf(item);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // ignore: unrelated_type_equality_checks
                    color: currentIndex == index
                        ? ColorConstants.mainTextColor
                        : ColorConstants.subTextColor,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 80,
            ),
            Button(onTap: () => Get.to(const RegisterPage()), title: "Continue")
          ],
        ),
      ),
    );
  }
}
