import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/_dashboard/application/scroll_to_index.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../core/app_constant.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AutoScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            scollToIndex(0, controller);
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
            scollToIndex(1, controller);
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
            scollToIndex(2, controller);
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
            scollToIndex(3, controller);
          },
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
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
                borderRadius: BorderRadius.circular(2.0),
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
