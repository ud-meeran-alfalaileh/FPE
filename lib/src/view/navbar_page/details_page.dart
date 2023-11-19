import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';

import '../../widget/pages_widget/navbar_widget.dart/detail_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.mainScaffoldBackgroundColor,
        body: DetailWidget(),
      ),
    );
  }
}
