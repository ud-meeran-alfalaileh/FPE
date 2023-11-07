import 'package:flutter/material.dart';

class ContainerModel {
  VoidCallback onTap;
  String image;
  String? mainText;
  String? subText;

  ContainerModel(
      {this.mainText, this.subText, required this.image, required this.onTap});
}
