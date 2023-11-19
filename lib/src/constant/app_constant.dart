import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/src/model/botton_model.dart';
import 'package:tasks_flutter/src/model/container_model.dart';
import 'package:tasks_flutter/src/view/navbar_page/details_page.dart';

class AppConstant {
  static List<Image> splachImage = [
    Image.asset("assets/splash_1.png"),
    Image.asset("assets/splash_2.png"),
    Image.asset("assets/splash_3.png"),
  ];

  static List<String> imagePaths = [
    "assets/ps4_console_white_1.png",
    "assets/ps4_console_white_2.png",
    "assets/ps4_console_white_3.png",
    "assets/ps4_console_white_4.png",
  ];

  static List<ContainerModel> iconContainer = [
    ContainerModel(
        mainText: "Flash \nDeal",
        image: "assets/icons/Flash Icon.svg",
        onTap: () {}),
    ContainerModel(
        mainText: 'Bill\n', image: "assets/icons/Bill Icon.svg", onTap: () {}),
    ContainerModel(
        mainText: 'Game\n', image: "assets/icons/Game Icon.svg", onTap: () {}),
    ContainerModel(
        mainText: 'Daily \nGift',
        image: "assets/icons/Gift Icon.svg",
        onTap: () {}),
    ContainerModel(
        mainText: 'More\n', image: "assets/icons/Plus Icon.svg", onTap: () {}),
  ];

  static List<ContainerModel> specialContainer = [
    ContainerModel(
        mainText: "SmartPhone",
        subText: "18 Brand",
        image: "assets/Image Banner 2.png",
        onTap: () {}),
    ContainerModel(
        mainText: "Fashion",
        subText: "24 Bran",
        image: "assets/Image Banner 3.png",
        onTap: () {})
  ];
  static List<ContainerModel> popularContainer = [
    ContainerModel(
        mainText: "Wireless Controller\nfor PS4",
        subText: "64.99",
        image: "assets/Image Popular Product 1.png",
        onTap: () {
          Get.to(const DetailPage());
        }),
    ContainerModel(
        mainText: "Nike Sport White -\nMen Pant",
        subText: "50.5",
        image: "assets/Image Popular Product 2.png",
        onTap: () {}),
    ContainerModel(
        mainText: "Wireless Controller\nfor PS4",
        subText: "64.99",
        image: "assets/Image Popular Product 3.png",
        onTap: () {})
  ];

  static List<Color> color = [
    const Color(0xffF6625E),
    const Color(0xff836DB8),
    const Color(0xffDECB9C),
    const Color(0xffffffff),
  ];

  static List<Botton> profile = [
    Botton(title: "My Cart", ontap: () {}),
    Botton(title: "Payment Method", ontap: () {}),
    Botton(title: "Setting", ontap: () {}),
    Botton(title: "About", ontap: () {}),
    Botton(title: "Logout", ontap: () {}),
  ];
}
