import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../widgets/home_content.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });
  final double width;
  final double height;
  final AutoScrollController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height - 64,
      width: width,
      child: Padding(
        padding: EdgeInsets.only(
          left: 32.w,
        ),
        child: HomeContent(controller),
      ),
    );
  }
}
