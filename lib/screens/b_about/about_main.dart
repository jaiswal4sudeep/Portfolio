// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/screens/b_about/screens/about_desktop.dart';
import 'package:portfolio/screens/b_about/screens/about_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMain extends StatelessWidget {
  const AboutMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AboutMobile(),
      desktop: const AboutDesktop(),
    );
  }
}
