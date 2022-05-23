// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/screens/c_experience/screens/experience_desktop.dart';
import 'package:portfolio/screens/c_experience/screens/experience_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperinceMain extends StatelessWidget {
  const ExperinceMain({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ExperienceMobile(
        height: height,
        width: width,
      ),
      desktop: ExperienceDesktop(
        height: height,
        width: width,
      ),
    );
  }
}
