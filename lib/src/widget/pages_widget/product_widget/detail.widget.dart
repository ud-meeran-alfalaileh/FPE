import 'package:flutter/material.dart';
import 'package:tasks_flutter/src/constant/colors_const.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: ColorConstants.mainScaffoldBackgroundColor,
          elevation: 0,
          pinned: true,
          centerTitle: false,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
              background: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/Image Popular Product 1.png",
                  width: 200,
                  height: 200,
                ),
                Row(
                  children: [],
                )
              ],
            ),
          )),
        ),
      ],
    );
  }
}
