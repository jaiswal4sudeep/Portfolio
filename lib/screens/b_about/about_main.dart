// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/screens/b_about/screens/about_desktop.dart';
import 'package:portfolio/screens/b_about/screens/about_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMain extends StatelessWidget {
  const AboutMain({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(
        height: height,
        width: width,
      ),
      desktop: AboutDesktop(
        height: height,
        width: width,
      ),
    );
  }
}
