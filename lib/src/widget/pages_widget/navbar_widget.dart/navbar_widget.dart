import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/view/navbar_page/details_page.dart';
import 'package:tasks_flutter/src/view/navbar_page/home_page.dart';
import 'package:tasks_flutter/src/view/navbar_page/profile_page.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  final List<Widget> widgetList = const [
    HomePage(),
    DetailPage(),
    Scaffold(),
    ProfilePage(),
  ];
  RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(() => Scaffold(
            body: Center(
              child: widgetList[selectedIndex.value],
            ),
            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: ColorConstants.mainTextColor,
                unselectedItemColor: ColorConstants.subTextColor,
                onTap: (value) {
                  selectedIndex.value = value;
                },
                currentIndex: selectedIndex.value,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.storefront_outlined,
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.heart_fill,
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.chat_bubble_text,
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_2_outlined,
                    ),
                    label: "",
                  ),
                ]))));
  }
}
