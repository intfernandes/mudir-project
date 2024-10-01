import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mudir/features/register/ui/widgets/verfiy_widgets/bin_code_item.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../core/utils/consts/app_colors.dart';
import '../../../core/utils/consts/app_images.dart';
import '../../../core/utils/responsiveUi/responsive_height.dart';
import '../../../core/utils/responsiveUi/responsive_width.dart';
import '../../../core/utils/widgets/button_animation.dart';

class VrefiyCode extends StatelessWidget {
   VrefiyCode({super.key});
  final StreamController<ErrorAnimationType> errorAnimationController=StreamController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: widgetHeight(context: context, height: 240),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
              ),
              image: const DecorationImage(
                  image: AssetImage(Kimage.authImage), fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: widgetHeight(context: context, height: 35),
          ),
          SvgPicture.asset(
            Kimage.logo,
            width: widgetWidth(context: context, width: 100),
            height: widgetHeight(context: context, height: 100),
          ),
          SizedBox(
            height: widgetHeight(context: context, height: 37),
          ),
          Padding(
            padding: REdgeInsetsDirectional.only(start: 22.0, end: 22),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "تأكيد رقم الهاتف",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24.sp,
                          color: KColors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: widgetHeight(context: context, height: 8),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ستصلك رسالة SMS بها رقم التأكيد على الرقم',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '0152221544+',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            print('تغيير الرقم pressed');
                          },
                          child: Text(
                            'تغيير الرقم',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: widgetHeight(context: context, height:40),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: PinCodeItem(
                    length: 4,
                    onChanged: (p0) {
                    },
                    errorAnimationController: errorAnimationController,
                  ),
                ),
                SizedBox(height: widgetHeight(context: context, height: 25),),
                SizedBox(
                    height: widgetHeight(context: context, height: 100),
                    child: AnimationButton()),
                SizedBox(height: widgetHeight(context: context, height: 10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("لم تصلك الرسالة بعد؟",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Cairo",
                      color: KColors.textGray
                    ),
                    ),
                    SizedBox(width: widgetWidth(context: context, width: 2),),
                    Text("إعادة إرسال بعد 01:30",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Cairo",
                          color: KColors.black
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
