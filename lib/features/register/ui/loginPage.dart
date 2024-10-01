
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../core/utils/consts/app_colors.dart';
import '../../../core/utils/consts/app_images.dart';
import '../../../core/utils/responsiveUi/responsive_height.dart';
import '../../../core/utils/responsiveUi/responsive_width.dart';
import '../../../core/utils/widgets/button_animation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: widgetHeight(context: context, height: 285),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
              ),
              image: const DecorationImage(image: AssetImage(Kimage.authImage),fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: widgetHeight(context: context, height: 45),
          ),
          SvgPicture.asset(Kimage.logo,
          width: widgetWidth(context: context, width: 100),
          height: widgetHeight(context: context, height: 100),
          ),
          SizedBox(height: widgetHeight(context: context, height: 81),),
          Padding(
            padding: REdgeInsetsDirectional.only(start: 22.0,end: 22),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("تسجيل الدخول",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25.sp,
                      color: KColors.black
                    ),
                    )
                  ],
                ),
                SizedBox(height: widgetHeight(context: context, height: 30),),
                IntlPhoneField(
                  flagsButtonPadding: REdgeInsetsDirectional.only(start: 12),
                  initialCountryCode: "EG",
                  showDropdownIcon: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:  const BorderSide(
                          color:  KColors.primary,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(12.r)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:  const BorderSide(
                          color:  Color(0xffC0C0C0),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(12.r)
                    ),
                  ),
                ),
                SizedBox(height: widgetHeight(context: context, height: 40),),
                Container(
                  height: 100,
                    child: AnimationButton())
              ],
            ),
          )
        ],
      ),
    );
  }
}
