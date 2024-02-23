import 'package:flutter/material.dart';

import '../widgets/projects_content.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double width = 864;

    return const ProjectsContent(
      width: width,
    );
  }
}
