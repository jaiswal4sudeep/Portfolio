import 'package:flutter/material.dart';
import 'package:portfolio/screens/d_projects/screens/projects_desktop.dart';
import 'package:portfolio/screens/d_projects/screens/projects_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsMain extends StatelessWidget {
  const ProjectsMain({Key? key, required this.height, required this.width})
      : super(key: key);
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
