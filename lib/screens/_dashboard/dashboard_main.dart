// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screens/dashboard_desktop.dart';
import 'screens/dashboard_mobile.dart';

class DashboardMain extends StatelessWidget {
  const DashboardMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ScreenTypeLayout(
      mobile: DashboardMobile(
        width: width,
        height: height,
      ),
      desktop: DashboardDesktop(
        width,
        height,
      ),
    );
  }
}
