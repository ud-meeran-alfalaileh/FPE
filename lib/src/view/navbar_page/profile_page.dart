import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/widget/pages_widget/navbar_widget.dart/profile_widget.dart';

import '../../constant/colors_const.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainScaffoldBackgroundColor,
        body: const ProfileWidget(),
      ),
    );
  }
}
