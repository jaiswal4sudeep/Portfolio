// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/screens/d_work/screens/work_desktop.dart';
import 'package:portfolio/screens/d_work/screens/work_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WorkMain extends StatelessWidget {
  const WorkMain({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: WorkMobile(
        height: height,
        width: width,
      ),
      desktop: WorkDesktop(
        height: height,
        width: width,
      ),
    );
  }
}
