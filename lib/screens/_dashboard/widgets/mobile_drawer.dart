import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../core/app_constant.dart';
import '../application/scroll_to_index.dart';

class MobileDrawer extends HookConsumerWidget {
  const MobileDrawer({
    Key? key,
    required this.width,
    required this.controller,
  }) : super(key: key);

  final double width;
  final AutoScrollController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      width: width * 0.6,
      backgroundColor: AppConstant.backgroundColor,
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          ListTile(
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              scollToIndex(0, controller);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'About',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              scollToIndex(1, controller);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'Experience',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              scollToIndex(2, controller);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'Projects',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              scollToIndex(3, controller);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'Contact',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              scollToIndex(4, controller);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
