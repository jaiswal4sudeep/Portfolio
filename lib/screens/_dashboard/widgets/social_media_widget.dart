import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/app_constant.dart';

class SocialMediaWidget extends HookConsumerWidget {
  const SocialMediaWidget(
    this.icon,
    this.function, {
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final Function function;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          size: 16.sp,
          color: AppConstant.preBGColor,
        ),
      ),
    );
  }
}
