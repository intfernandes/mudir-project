import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

import '../consts/app_colors.dart';

class AnimationButton extends StatefulWidget {
  @override
  _AnimationButtonState createState() => _AnimationButtonState();
}

class _AnimationButtonState extends State<AnimationButton> {
  ButtonState stateOnlyText = ButtonState.idle;
  ButtonState stateTextWithIcon = ButtonState.idle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          child: ProgressButton.icon(
            textStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
            height: 60.0,
              iconedButtons: {
            ButtonState.idle: IconedButton(
              icon: Icon(Icons.abc_outlined,size: 0,),
                text: 'تسجيل الدخول',
                color:KColors.primary),
            ButtonState.loading:
                IconedButton(text: 'Loading', color: KColors.primary),
            ButtonState.fail: IconedButton(
                icon: Icon(Icons.cancel, color: Colors.white),
                text: 'Failed',
                color: Colors.red.shade300),
            ButtonState.success: IconedButton(
                text: 'Success',
                icon: Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
                color: Colors.green.shade400)
          }, onPressed: onPressedIconWithText, state: stateTextWithIcon),
        ),
      ),
    );
  }

  void onPressedIconWithText() {
    switch (stateTextWithIcon) {
      case ButtonState.idle:
        stateTextWithIcon = ButtonState.loading;
        Future.delayed(
          Duration(seconds: 1),
          () {
            setState(
              () {
                stateTextWithIcon = Random.secure().nextBool()
                    ? ButtonState.success
                    : ButtonState.fail;
              },
            );
          },
        );

        break;
      case ButtonState.loading:
        break;
      case ButtonState.success:
        stateTextWithIcon = ButtonState.idle;
        break;
      case ButtonState.fail:
        stateTextWithIcon = ButtonState.idle;
        break;
    }
    setState(
      () {
        stateTextWithIcon = stateTextWithIcon;
      },
    );
  }
}
