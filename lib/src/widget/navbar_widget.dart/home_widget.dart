import 'package:flutter/cupertino.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/widget/custome_widget/custome_widget.dart';
import 'package:tasks_flutter/src/widget/text_widget/home_text.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        18.0,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                searchBar(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorConstants.borderColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    CupertinoIcons.cart,
                    color: ColorConstants.subTextColor,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorConstants.borderColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    CupertinoIcons.bell,
                    color: ColorConstants.subTextColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            couponContainer(),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                optionWidget('Flash \nDeal', "assets/icons/Flash Icon.svg"),
                optionWidget('Bill\n', "assets/icons/Bill Icon.svg"),
                optionWidget('Game\n', "assets/icons/Game Icon.svg"),
                optionWidget('Daily \nGift', "assets/icons/Gift Icon.svg"),
                optionWidget('More\n', "assets/icons/Plus Icon.svg"),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                homeMainText("Special for you"),
                GestureDetector(
                  child: optionText("see more"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 350,
                  height: 120,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    specialContainer(
                        "assets/Image Banner 2.png", "SmartPhone", "18 Brand"),
                    const SizedBox(
                      width: 10,
                    ),
                    specialContainer(
                        "assets/Image Banner 3.png", "Fashion", "24 Brand"),
                  ]),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                homeMainText("Popular Product"),
                GestureDetector(
                  child: optionText("see more"),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 250,
              width: 374,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                productWidget("assets/Image Popular Product 1.png",
                    "Wireless Controller\nfor PS4", "64.99"),
                const SizedBox(
                  width: 15,
                ),
                productWidget("assets/Image Popular Product 2.png",
                    "Nike Sport White -\nMen Pant", "50.5"),
                const SizedBox(
                  width: 15,
                ),
                productWidget("assets/Image Popular Product 3.png",
                    "Wireless Controller\nfor PS4", "64.99"),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
