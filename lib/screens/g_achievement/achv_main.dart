import 'package:flutter/material.dart';
import 'screens/achv_desktop.dart';
import 'screens/achv_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AchvMain extends StatelessWidget {
  const AchvMain({super.key, required this.height, required this.width});
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
