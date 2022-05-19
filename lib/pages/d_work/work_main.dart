// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/pages/d_work/screens/work_desktop.dart';
import 'package:portfolio/pages/d_work/screens/work_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WorkMain extends StatelessWidget {
  const WorkMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const WorkMobile(),
      desktop: const WorkDesktop(),
    );
  }
}
