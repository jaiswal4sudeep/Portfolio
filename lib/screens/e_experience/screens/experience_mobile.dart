import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/experience_content.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = 300.w;

    return ExperienceContent(
      width: width,
    );
  }
}
