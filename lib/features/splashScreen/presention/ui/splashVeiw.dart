import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/consts/app_colors.dart';
import '../../../../core/utils/consts/app_images.dart';
import '../../../../core/utils/consts/app_strings.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: "_logo_",
                    child: SvgPicture.asset(
                      Kimage.logo,
                      width: 120.h,
                      height: 120.h,
                    ),
                  ),
                ],
              ),
              Text(
                Kstrings.projectName,
                style: TextStyle(
                  fontSize: 24,
                  color: KColors.primary,
                ),
              ),
            ],
          ),
        )
            .animate()
            .fadeIn(duration: const Duration(milliseconds: 1500))
            .effect()
      /* Center(
              child: ImageWidget(path: Kimage.splashLogo, height: context.height * .7),
            ), */
    );
  }
}
