import 'package:flutter/material.dart';
import 'package:portfolio/screens/e_achievement/screens/achv_desktop.dart';
import 'package:portfolio/screens/e_achievement/screens/achv_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AchvMain extends StatelessWidget {
  const AchvMain({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AchvMobile(),
      desktop: const AchvDesktop(),
    );
  }
}
