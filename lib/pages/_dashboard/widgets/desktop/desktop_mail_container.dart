import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/app_constant.dart';

class DesktopMailContainer extends StatelessWidget {
  const DesktopMailContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.0750,
      height: height,
      child: Column(
        children: [
          const Spacer(),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(
                  Uri.parse(SocialMediaURLs.mailURL))) {
                await launchUrl(Uri.parse(SocialMediaURLs.mailURL));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'jaiswal4sudeep@gmail.com',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        letterSpacing: 2.sp,
                        color: AppConstant.titlecolor.withOpacity(0.25),
                      ),
                ),
              ),
            ),
          ),
          Container(
            width: 0.5.w,
            height: 100.h,
            color: AppConstant.titlecolor.withOpacity(0.25),
          ),
        ],
      ),
    );
  }
}
