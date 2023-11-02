import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Forms {
  //TextEditingController controller = TextEditingController();
  String label;
  String hintText;
  Icon icon;
  bool invisible;
  bool enableText;

  final String? Function(String?)? validator;
  TextInputType type;
  void Function(String?)? onChange;
  List<TextInputFormatter>? inputFormat;
  Forms(
      {required this.label,
      // required this.controller,
      required this.enableText,
      required this.hintText,
      required this.icon,
      required this.invisible,
      required this.validator,
      required this.type,
      required this.onChange,
      required this.inputFormat});
}
