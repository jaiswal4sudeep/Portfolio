import 'package:flutter/material.dart';
import 'screens/home_desktop.dart';
import 'screens/home_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });
  final double width;
  final double height;
  final AutoScrollController controller;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(
        controller: controller,
        height: height,
        width: width,
      ),
      desktop: HomeDesktop(
        controller: controller,
        height: height,
        width: width,
      ),
    );
  }
}
