import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudir/core/utils/consts/app_colors.dart';
import 'package:mudir/core/utils/consts/app_images.dart';
import 'package:mudir/core/utils/responsiveUi/responsive_height.dart';
import 'package:mudir/features/home/manger/home_cubit.dart';
import 'package:mudir/features/home/ui/homePageView.dart';
import 'package:mudir/features/home/ui/mapView.dart';
import 'package:mudir/features/register/ui/set_profile_location.dart';

import '../../../core/utils/responsiveUi/responsive_width.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController searchBar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: 0,
            backgroundColor: KColors.primary,
            bottom: PreferredSize(
                preferredSize: Size(double.infinity,
                    widgetHeight(context: context, height: 180)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          REdgeInsets.only(bottom: 20, right: 15.0, left: 15),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Image(image: AssetImage(Kimage.list)),
                              SizedBox(
                                width: widgetWidth(context: context, width: 2),
                              ),
                              SvgPicture.asset(Kimage.mudirLogo),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              SvgPicture.asset(Kimage.messages2),
                              SizedBox(
                                width: widgetWidth(context: context, width: 15),
                              ),
                              SvgPicture.asset(Kimage.notificationSvg),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: widgetHeight(context: context, height: 8),
                    ),
                    Padding(
                      padding:
                          REdgeInsets.only(bottom: 20, right: 15.0, left: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: widgetHeight(
                                context: context,
                                height: 55,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.white,
                              ),
                              child: AnimatedSearchBar(
                                  labelAlignment: Alignment.centerRight,
                                  height: 60,
                                  label: '   بحث',
                                  searchIcon:
                                      SvgPicture.asset(Kimage.searchIcon),
                                  controller: searchBar,
                                  labelStyle: const TextStyle(
                                      fontSize: 12, fontFamily: "poppins"),
                                  searchStyle:
                                      const TextStyle(color: Colors.black),
                                  cursorColor: Colors.white,
                                  textInputAction: TextInputAction.done,
                                  searchDecoration: const InputDecoration(
                                    hintText: 'Search',
                                    alignLabelWithHint: true,
                                    fillColor: Colors.white,
                                    focusColor: Colors.white,
                                    hintStyle: TextStyle(color: Colors.white70),
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {},
                                  onFieldSubmitted: (value) {}),
                            ),
                          ),
                          SizedBox(
                            width: widgetWidth(context: context, width: 10),
                          ),
                          GestureDetector(
                            onTap: () {
                              HomeCubit.get(context).changeFadeState();
                            },
                            child: Container(
                              width: widgetWidth(context: context, width: 25),
                              height: widgetHeight(context: context, height: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: Colors.white),
                              child: Center(
                                  child: SvgPicture.asset(
                                Kimage.viewDay,
                                width: widgetWidth(context: context, width: 14),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          body: BlocBuilder<HomeCubit,HomeState>(builder: (context, state) {
            return AnimatedCrossFade(
              secondCurve: Curves.easeIn,
                firstCurve: Curves.easeIn,
                firstChild: Mapview(),
                secondChild: HomePageView(),
                crossFadeState: HomeCubit.get(context).homePage,
                duration: const Duration(milliseconds: 500));
          },)
          // MapScreen(),
          ),
    );
  }
}
