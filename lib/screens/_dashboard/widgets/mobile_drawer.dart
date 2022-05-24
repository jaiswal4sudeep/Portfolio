import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../core/app_constant.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    Key? key,
    required this.width,
    required this.controller,
  }) : super(key: key);

  final double width;
  final AutoScrollController controller;

  @override
  Widget build(BuildContext context) {
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
              controller.scrollToIndex(
                0,
                duration: const Duration(
                  seconds: 2,
                ),
                preferPosition: AutoScrollPosition.begin,
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'About',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              controller.scrollToIndex(
                1,
                duration: const Duration(
                  seconds: 2,
                ),
                preferPosition: AutoScrollPosition.begin,
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'Experience',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              controller.scrollToIndex(
                2,
                duration: const Duration(
                  seconds: 2,
                ),
                preferPosition: AutoScrollPosition.begin,
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'Work',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              controller.scrollToIndex(
                3,
                duration: const Duration(
                  seconds: 2,
                ),
                preferPosition: AutoScrollPosition.begin,
              );
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: Text(
              'Contact',
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              controller.scrollToIndex(
                4,
                duration: const Duration(
                  seconds: 2,
                ),
                preferPosition: AutoScrollPosition.begin,
              );
              Navigator.of(context).pop();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: AppConstant.primaryColor,
                textStyle: Theme.of(context).textTheme.headline4,
              ),
              child: const Text('Resume'),
            ),
          ),
        ],
      ),
    );
  }
}
