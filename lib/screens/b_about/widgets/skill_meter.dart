import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_constant.dart';

class SkillMeter extends StatelessWidget {
  const SkillMeter({
    Key? key, required this.meterValue,
  }) : super(key: key);
  final double meterValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        alignment: Alignment.centerLeft,
        width: 250.w,
        height: 2.sp,
        color: AppConstant.subtitlecolor.withOpacity(0.3),
        child: Container(
          alignment: Alignment.centerLeft,
          color: AppConstant.primaryColor,
          width: meterValue,
          height: 2.sp,
        ),
      ),
    );
  }
}
