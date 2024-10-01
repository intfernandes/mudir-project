
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../consts/app_colors.dart';
import '../consts/app_images.dart';
import '../consts/app_strings.dart';
import 'button_animation.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.enabled = false,
    this.onChanged,
    this.controller,
  });
  final bool enabled;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.r),
      child: TextFormField(
        cursorRadius: Radius.circular(10.r),
        onChanged: onChanged,
        controller: controller,
        readOnly: !enabled,
        decoration: InputDecoration(
          contentPadding: REdgeInsetsDirectional.only(),
          prefixIcon:enabled
              ? SvgPicture.asset(Kimage.searchIcon, fit: BoxFit.scaleDown)
              : Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                bottomLeft: Radius.circular(8.r),
              ),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              Kimage.selectLocationSearchIcon,
              height: 24.h,
              width: 24.h,
              // color: Theme.of(context).primaryColor.withOpacity(.6),
            ),
          ),
          border: InputBorder.none,
          hintText: Kstrings.searchHere,
          suffixIcon: enabled
              ? AnimationButton():null
          //   // shape: const WidgetStatePropertyAll(CircleBorder()),
          //   onTap: (){}
          //   //     () => baseBottomSheet(context, children: [
          //   //   const MainAppBarFilterBottomSheetBody(),
          //   // ]),
          // )
          //     : null,

          ,focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        onTap: () async {
        },
      ),
    );
  }
}