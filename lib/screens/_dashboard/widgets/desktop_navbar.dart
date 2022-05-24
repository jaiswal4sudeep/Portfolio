import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            controller.scrollToIndex(
              0,
              duration: const Duration(
                seconds: 2,
              ),
              preferPosition: AutoScrollPosition.begin,
            );
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
            controller.scrollToIndex(
              1,
              duration: const Duration(
                seconds: 2,
              ),
              preferPosition: AutoScrollPosition.begin,
            );
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
            controller.scrollToIndex(
              2,
              duration: const Duration(
                seconds: 2,
              ),
              preferPosition: AutoScrollPosition.begin,
            );
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
            controller.scrollToIndex(
              3,
              duration: const Duration(
                seconds: 2,
              ),
              preferPosition: AutoScrollPosition.begin,
            );
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
            controller.scrollToIndex(
              4,
              duration: const Duration(
                seconds: 2,
              ),
              preferPosition: AutoScrollPosition.begin,
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
