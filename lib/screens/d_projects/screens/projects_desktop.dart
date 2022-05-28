import 'package:flutter/material.dart';

import '../widgets/projects_content.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({
    Key? key,
   
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    const double width = 864;

    return const ProjectsContent(
      width: width,
    );
  }
}
