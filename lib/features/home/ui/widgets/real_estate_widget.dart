import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mudir/core/utils/consts/app_images.dart';
import 'package:mudir/core/utils/responsiveUi/responsive_height.dart';
import 'package:mudir/core/utils/responsiveUi/responsive_width.dart';
class RealEstateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Container(
              margin: REdgeInsetsDirectional.only(start: 20,end: 20,top: 20),
              height: widgetHeight(context: context, height: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: DecorationImage(image: AssetImage(Kimage.temp,),fit: BoxFit.fill)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Category Tabs
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Row(
                      children: [
                        buildCategoryButton('الفئة 1', context),
                        SizedBox(width: widgetWidth(context: context, width: 5),),
                        buildCategoryButton('الفئة 2', context),
                        SizedBox(width: widgetWidth(context: context, width: 5),),
                        buildCategoryButton('الفئة 3', context),
                        const Spacer(),
                        Container(
                          width: widgetWidth(context: context, width: 15),
                          height: widgetHeight(context: context, height: 35),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Center(
                            child:  SvgPicture.asset(Kimage.save2),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(padding: REdgeInsetsDirectional.only(start: 13,end: 13,bottom: 10),
                  child: Container(
                    height: widgetHeight(context: context, height: 65),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient:  LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.8), // Top gradient color
                        Colors.white.withOpacity(0.7), // Bottom gradient color
                      ],
                    ),
                    ),
                    child: Padding(
                      padding: REdgeInsets.only(bottom: 8,top: 9,right: 10,left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("المساحة",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontSize: 14.sp),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Kimage.expand,color: Colors.white,),
                                SizedBox(width: widgetWidth(context: context, width: 2),),
                                Text("254 م",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                                    fontFamily: "Cairo",
                                    fontSize: 13.sp),)
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("عدد الغرف",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontSize: 14.sp),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Kimage.bed,color: Colors.white,),
                                SizedBox(width: widgetWidth(context: context, width: 2),),
                                Text(" 2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                                    fontFamily: "Cairo",
                                    fontSize: 13.sp),)
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("عرض الشارع",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,
                            fontFamily: "Cairo",
                            fontSize: 13.sp),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Kimage.expandSmall,color: Colors.white,),
                                SizedBox(width: widgetWidth(context: context, width: 2),),
                                Text("6 م ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                                    fontFamily: "Cairo",
                                    fontSize: 13.sp),)
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("الصالات",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,
                            fontFamily: "Cairo",
                            fontSize: 14.sp),),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Kimage.sofa,color: Colors.white,),
                                SizedBox(width: widgetWidth(context: context, width: 2),),
                                Text(" 2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,
                                    fontFamily: "Cairo",
                                    fontSize: 13.sp),)
                              ],
                            )
                          ],
                        ),
                      ],),
                    ),
                  ),
                  )
                ],
              ),
            ),
            SizedBox(height: widgetHeight(context: context, height: 5),),
            Padding(
              padding: REdgeInsets.only(right: 28.0,left: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("اسم المكان",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,
                          fontFamily: "Cairo",
                          fontSize: 16.sp),),
                      Text("240.000",style: TextStyle(color: const Color(0xff2E637F),fontWeight: FontWeight.w700,
                          fontFamily: "Cairo",
                          fontSize: 16.sp),),
                    ],
                  ),
                  SizedBox(height: widgetHeight(context: context, height: 8),),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Kimage.location,color: const Color(0xff6B7A85),),
                      SizedBox(width: widgetWidth(context: context, width: 5),),
                      Text("المكان الأساسي, المكان الفرعي, تفاصيل المكان",style: TextStyle(color: const Color(0xff6B7A85),fontWeight: FontWeight.w700,
                          fontFamily: "Cairo",
                          fontSize: 14.sp),),
                    ],
                  ),
                ],
              ),
            )
          ],
    );
  }

  // Helper method for building category buttons
  Widget buildCategoryButton(String title, BuildContext context) {
    return Container(
      width: widgetWidth(context: context, width: 45),
      height: widgetHeight(context: context, height: 35),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 14.sp),
        ),
      ),
    );
  }
}