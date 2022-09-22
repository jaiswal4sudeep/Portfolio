import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/screens/_dashboard/application/scroll_to_index.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../core/app_constant.dart';

class DesktopNavbar extends HookConsumerWidget {
  const DesktopNavbar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AutoScrollController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            scollToIndex(0, controller);
          },
          style: TextButton.styleFrom(
            foregroundColor: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Home'),
          ),
        ),
        TextButton(
          onPressed: () {
            scollToIndex(1, controller);
          },
          style: TextButton.styleFrom(
            foregroundColor: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('About'),
          ),
        ),
        TextButton(
          onPressed: () {
            scollToIndex(2, controller);
          },
          style: TextButton.styleFrom(
            foregroundColor: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Experience'),
          ),
        ),
        TextButton(
          onPressed: () {
            scollToIndex(3, controller);
          },
          style: TextButton.styleFrom(
            foregroundColor: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Projects'),
          ),
        ),
        TextButton(
          onPressed: () {
            scollToIndex(4, controller);
          },
          style: TextButton.styleFrom(
            foregroundColor: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Achievements'),
          ),
        ),
        TextButton(
          onPressed: () {
            scollToIndex(5, controller);
          },
          style: TextButton.styleFrom(
            foregroundColor: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Contact'),
          ),
        ),
        SizedBox(
          width: 8.sp,
        ),
      ],
    );
  }
}
