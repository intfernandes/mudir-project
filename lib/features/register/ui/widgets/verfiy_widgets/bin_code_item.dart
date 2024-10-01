import 'dart:async';


import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/utils/consts/app_colors.dart';
import '../../../../../core/utils/responsiveUi/responsive_height.dart';
import '../../../../../core/utils/responsiveUi/responsive_width.dart';

class PinCodeItem extends StatelessWidget {
  const PinCodeItem({
    super.key,
    required this.length,
    required this.onChanged,
    required this.errorAnimationController,
  });

  final int length;
  final void Function(String) onChanged;
  final StreamController<ErrorAnimationType> errorAnimationController;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: length,
      obscureText: false,
      keyboardType: TextInputType.number,
      animationType: AnimationType.slide,
      textStyle: const TextStyle(
        color: Color(0xFF2E637F),
        fontSize: 24,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w600,
      ),
      onChanged: onChanged,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: widgetHeight(context: context, height: 70),
        fieldWidth: widgetWidth(context: context, width: 30),
        activeColor: const Color(0x192E637F),
        inactiveColor: const Color(0x192E637F),
        activeFillColor: Colors.white,
        selectedColor: KColors.primary,
        borderWidth: 1,
      ),
      animationDuration: const Duration(milliseconds: 200),
      enableActiveFill: false,
      errorAnimationController: errorAnimationController,
      appContext: context,
    );
  }
}
