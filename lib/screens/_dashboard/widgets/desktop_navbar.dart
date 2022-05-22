import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_constant.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Home'),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('About'),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Experience'),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            primary: AppConstant.titlecolor,
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Work'),
          ),
        ),
        TextButton(
          onPressed: () {},
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
