import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/screens/_dashboard/application/scroll_provider.dart';
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
            ref.read(scrollProvider.notifier).scollToIndex(0, controller);
          },
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Home'),
          ),
        ),
        TextButton(
          onPressed: () {
            ref.read(scrollProvider.notifier).scollToIndex(1, controller);
          },
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('About'),
          ),
        ),
        TextButton(
          onPressed: () {
            ref.read(scrollProvider.notifier).scollToIndex(2, controller);
          },
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Experience'),
          ),
        ),
        TextButton(
          onPressed: () {
            ref.read(scrollProvider.notifier).scollToIndex(3, controller);
          },
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Work'),
          ),
        ),
        TextButton(
          onPressed: () {
            ref.read(scrollProvider.notifier).scollToIndex(
                  4,
                  controller,
                );
          },
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Contact'),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            overlayColor: MaterialStateColor.resolveWith(
              (states) => AppConstant.primaryColor.withOpacity(0.2),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(
                  color: AppConstant.primaryColor,
                  width: 1.sp,
                ),
              ),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Resume',
              style: TextStyle(
                color: AppConstant.titlecolor,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8.sp,
        ),
      ],
    );
  }
}
