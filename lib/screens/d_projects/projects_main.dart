import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsMain extends StatelessWidget {
  const ProjectsMain({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProjectsMain(
        height: height,
        width: width,
      ),
      desktop: ProjectsMain(
        height: height,
        width: width,
      ),
    );
  }
}
