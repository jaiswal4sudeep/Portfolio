import 'package:flutter/material.dart';
import 'screens/experience_desktop.dart';
import 'screens/experience_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperinceMain extends StatelessWidget {
  const ExperinceMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ExperienceMobile(),
      desktop: const ExperienceDesktop(),
    );
  }
}
