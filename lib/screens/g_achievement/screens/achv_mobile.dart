import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/achv_content.dart';

class AchvMobile extends StatelessWidget {
  const AchvMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = 300.w;

    return AchvContent(
      width: width,
    );
  }
}
