import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks_flutter/constant/colors_const.dart';
import 'package:tasks_flutter/widget/forms_widget/register_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainScaffoldBackgroundColor,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: const RegisterWidget(),
    ));
  }
}
