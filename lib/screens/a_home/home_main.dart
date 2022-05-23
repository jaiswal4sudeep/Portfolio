// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/screens/a_home/screens/home_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screens/home_mobile.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(
        height: height,
        width: width,
      ),
      desktop: HomeDesktop(
        height: height,
        width: width,
      ),
    );
  }
}
