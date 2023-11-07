import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/src/model/container_model.dart';
import 'package:tasks_flutter/src/view/product_page/detail_page.dart';
import 'package:tasks_flutter/src/widget/constant_widget/size/app_size.dart';
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
                HomePageWidgets.searchBar(),
                HomePageWidgets.appBarIcon(
                    container: ContainerModel(
                        image: "assets/cons/Cart Icon.svg", onTap: () {})),
                HomePageWidgets.appBarIcon(
                    container: ContainerModel(
                        image: "assets/cons/Bill Icon.svg", onTap: () {})),
              ],
            ),
            AppSizes.largeHeightSizedBox,
            HomePageWidgets.couponContainer(),
            AppSizes.largeHeightSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomePageWidgets.optionWidget(
                    container: ContainerModel(
                        mainText: "Flash \nDeal",
                        image: "assets/icons/Flash Icon.svg",
                        onTap: () {})),
                HomePageWidgets.optionWidget(
                    container: ContainerModel(
                        mainText: 'Bill\n',
                        image: "assets/icons/Bill Icon.svg",
                        onTap: () {})),
                HomePageWidgets.optionWidget(
                    container: ContainerModel(
                        mainText: 'Game\n',
                        image: "assets/icons/Game Icon.svg",
                        onTap: () {})),
                HomePageWidgets.optionWidget(
                    container: ContainerModel(
                        mainText: 'Daily \nGift',
                        image: "assets/icons/Gift Icon.svg",
                        onTap: () {})),
                HomePageWidgets.optionWidget(
                    container: ContainerModel(
                        mainText: 'More\n',
                        image: "assets/icons/Plus Icon.svg",
                        onTap: () {})),
              ],
            ),
            AppSizes.mediumHeightSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                homeMainText("Special for you"),
                GestureDetector(
                  child: optionText("see more"),
                ),
              ],
            ),
            AppSizes.mediumHeightSizedBox,
            Row(
              children: [
                SizedBox(
                  width: 350,
                  height: 120,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    HomePageWidgets.specialContainer(
                        container: ContainerModel(
                            mainText: "SmartPhone",
                            subText: "18 Brand",
                            image: "assets/Image Banner 2.png",
                            onTap: () {})),
                    AppSizes.smallWidthSizedBox,
                    HomePageWidgets.specialContainer(
                        container: ContainerModel(
                            mainText: "Fashion",
                            subText: "24 Bran",
                            image: "assets/Image Banner 3.png",
                            onTap: () {})),
                  ]),
                ),
              ],
            ),
            AppSizes.mediumHeightSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                homeMainText("Popular Product"),
                GestureDetector(
                  child: optionText("see more"),
                ),
              ],
            ),
            AppSizes.smallHeightSizedBox,
            SizedBox(
              height: 250,
              width: 374,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                HomePageWidgets.productWidget(
                    container: ContainerModel(
                        mainText: "Wireless Controller\nfor PS4",
                        subText: "64.99",
                        image: "assets/Image Popular Product 1.png",
                        onTap: () {
                          Get.to(const DetailPage());
                        })),
                AppSizes.smallWidthSizedBox,
                HomePageWidgets.productWidget(
                    container: ContainerModel(
                        mainText: "Nike Sport White -\nMen Pant",
                        subText: "50.5",
                        image: "assets/Image Popular Product 2.png",
                        onTap: () {})),
                AppSizes.smallWidthSizedBox,
                HomePageWidgets.productWidget(
                    container: ContainerModel(
                        mainText: "Wireless Controller\nfor PS4",
                        subText: "64.99",
                        image: "assets/Image Popular Product 3.png",
                        onTap: () {})),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
