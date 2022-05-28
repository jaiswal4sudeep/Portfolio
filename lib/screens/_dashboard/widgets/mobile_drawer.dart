import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../core/app_constant.dart';
import '../application/scroll_to_index.dart';

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                  (states) => AppConstant.primaryColor.withOpacity(0.2),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    side: BorderSide(
                      color: AppConstant.primaryColor,
                      width: 1.sp,
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Resume',
                  style: TextStyle(
                    color: AppConstant.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
