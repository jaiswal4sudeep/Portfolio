// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screens/dashboard_desktop.dart';
import 'screens/dashboard_mobile.dart';


class DashboardMain extends StatelessWidget {
  const DashboardMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const DashboardMobile(),
      desktop: const DashboardDesktop(),
    );
  }
}
