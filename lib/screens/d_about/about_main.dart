import 'package:flutter/material.dart';
import 'screens/about_desktop.dart';
import 'screens/about_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMain extends StatelessWidget {
  const AboutMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AboutMobile(),
      desktop: const AboutDesktop(),
    );
  }
}
