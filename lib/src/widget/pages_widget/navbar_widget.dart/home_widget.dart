import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_flutter/src/constant/app_constant.dart';
import 'package:tasks_flutter/src/model/container_model.dart';
import 'package:tasks_flutter/src/widget/constant_widget/size/app_size.dart';
import 'package:tasks_flutter/src/widget/custome_widget/home_custom.dart';
import 'package:tasks_flutter/src/widget/custome_widget/product_widget.dart';

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
                HomeCustom.searchBar(),
                HomeCustom.appBarIcon(
                    container: ContainerModel(
                        image: "assets/icons/Cart Icon.svg", onTap: () {})),
                HomeCustom.appBarIcon(
                    container: ContainerModel(
                        image: "assets/icons/Bell.svg", onTap: () {})),
              ],
            ),
            AppSizes.largeHeightSizedBox,
            HomeCustom.couponContainer(),
            AppSizes.largeHeightSizedBox,
            SizedBox(
              width: 350.w,
              height: 100.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return HomeCustom.optionWidget(
                        container: AppConstant.iconContainer[index]);
                  }),
                  separatorBuilder: ((context, index) {
                    return AppSizes.smallWidthSizedBox;
                  }),
                  itemCount: AppConstant.iconContainer.length),
            ),
            AppSizes.smallHeightSizedBox,
            HomeCustom.titleRow("Special For You", () {}),
            AppSizes.mediumHeightSizedBox,
            
            SizedBox(
                width: 350.w,
                height: 120.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return HomeCustom.specialContainer(
                          container: AppConstant.specialContainer[index]);
                    }),
                    separatorBuilder: ((context, index) {
                      return AppSizes.smallWidthSizedBox;
                    }),
                    itemCount: AppConstant.specialContainer.length)),
            AppSizes.mediumHeightSizedBox,
            HomeCustom.titleRow("Popular Product", () {}),
            AppSizes.smallHeightSizedBox,
            SizedBox(
              height: 250.h,
              width: 374.w,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return ProductWidget(
                      container: AppConstant.popularContainer[index]);
                }),
                separatorBuilder: ((context, index) {
                  return AppSizes.smallWidthSizedBox;
                }),
                itemCount: AppConstant.popularContainer.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
