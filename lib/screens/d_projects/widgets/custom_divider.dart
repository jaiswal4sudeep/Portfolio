import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_constant.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.75.sp,
      width: width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppConstant.backgroundColor,
            AppConstant.preBGColor,
            AppConstant.preBGColor,
            AppConstant.preBGColor,
            AppConstant.backgroundColor,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}
