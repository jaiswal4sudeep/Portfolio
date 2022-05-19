// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/pages/c_experience/screens/experience_desktop.dart';
import 'package:portfolio/pages/c_experience/screens/experience_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperinceMain extends StatelessWidget {
  const ExperinceMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ExperienceMobile(),
      desktop: const ExperienceDesktop(),
    );
  }
}
