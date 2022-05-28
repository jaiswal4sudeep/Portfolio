import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/projects_content.dart';

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = 300.w;

    return ProjectsContent(
      width: width,
    );
  }
}
