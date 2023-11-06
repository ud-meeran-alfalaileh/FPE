import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';
import 'package:tasks_flutter/src/view/vanbar_page/home_page.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  final List<Widget> widgetList = const [
    HomePage(),
    Text("dddd"),
    Scaffold(),
    Scaffold(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
              child: widgetList[selectedIndex],
            ),
            bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: ColorConstants.mainTextColor,
                unselectedItemColor: ColorConstants.subTextColor,
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                currentIndex: selectedIndex,
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
                ])));
  }
}
