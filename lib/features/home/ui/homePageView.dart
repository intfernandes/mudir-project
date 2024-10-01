import 'package:flutter/material.dart';
import 'package:mudir/core/utils/responsiveUi/responsive_height.dart';
import 'package:mudir/features/home/ui/widgets/real_estate_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => RealEstateWidget(),
      itemCount: 10,
      ),
    );
  }
}
