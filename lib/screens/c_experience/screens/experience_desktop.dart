import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../widgets/experience_content.dart';

class ExperienceDesktop extends HookWidget {
  const ExperienceDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double width = 864;

    return const ExperienceContent(
      width: width,
    );
  }
}
