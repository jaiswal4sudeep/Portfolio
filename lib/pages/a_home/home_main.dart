// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/pages/a_home/screens/home_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screens/home_mobile.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeMobile(),
      desktop: const HomeDesktop(),
    );
  }
}
