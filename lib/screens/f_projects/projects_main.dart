import 'package:flutter/material.dart';
import 'screens/projects_desktop.dart';
import 'screens/projects_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsMain extends StatelessWidget {
  const ProjectsMain({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ProjectsMobile(),
      desktop: const ProjectsDesktop(),
    );
  }
}
