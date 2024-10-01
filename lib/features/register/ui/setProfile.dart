import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/consts/app_colors.dart';
import '../../../core/utils/responsiveUi/responsive_height.dart';
import '../../../core/utils/responsiveUi/responsive_width.dart';

class SetProfilePage extends StatefulWidget {
  @override
  _SetProfilePageState createState() => _SetProfilePageState();
}

class _SetProfilePageState extends State<SetProfilePage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  REdgeInsets.only(top: 40.0,right: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: widgetHeight(context: context, height: 34),
                    width: widgetWidth(context: context, width: 20),
                    child: Center(child: Icon(Icons.arrow_back_ios,size: 22.sp,))),
                Text('تسجيل حساب جديد', style: TextStyle(fontSize: 18.sp,fontFamily: "Cairo")),
                 SizedBox(width: widgetWidth(context: context, width: 20),),
              ],
            ),
            SizedBox(height: widgetHeight(context: context, height: 40),),
            CircleAvatar(
              radius: 50.r,
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.camera_alt, size: 40, color: Colors.white),
            ),
            SizedBox(height: widgetHeight(context: context, height: 40)),

            // First Name TextField
            SizedBox(
              height: widgetHeight(context: context, height: 100),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("الأسم الأول",style: TextStyle(fontFamily: "Cairo",fontSize: 14.sp),),
                      Text("*",style: TextStyle(fontFamily: "Cairo",fontSize: 14.sp,color: Colors.red),),
                    ],
                  ),
                  SizedBox(height: widgetHeight(context: context, height: 8),),
                  Expanded(
                    child: TextFormField(
                      expands: true,
                      minLines: null,
                      maxLines: null,
                      controller: firstNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: KColors.grey12),
                          borderRadius: BorderRadius.circular(12.r)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(color: KColors.primary),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: widgetHeight(context: context, height: 20)),
            SizedBox(
              height: widgetHeight(context: context, height: 100),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("الأسم الأخير",style: TextStyle(fontFamily: "Cairo",fontSize: 14.sp),),
                      Text("*",style: TextStyle(fontFamily: "Cairo",fontSize: 14.sp,color: Colors.red),),
                    ],
                  ),
                  SizedBox(height: widgetHeight(context: context, height: 8),),
                  Expanded(
                    child: TextFormField(
                      expands: true,
                      minLines: null,
                      maxLines: null,
                      controller: lastNameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: KColors.grey12),
                            borderRadius: BorderRadius.circular(12.r)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(color: KColors.primary),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: widgetHeight(context: context, height: 53)),

            // Next Button
            SizedBox(
              width: double.infinity,  // Makes the button take the full width
              child: ElevatedButton(
                onPressed: () {
                  // Handle next button press
                },
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  fixedSize: Size(double.infinity, widgetHeight(context: context, height: 60)),
                  backgroundColor: Colors.blue, // Button color
                ),
                child: Text(
                  'التالي',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Cairo",
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}
