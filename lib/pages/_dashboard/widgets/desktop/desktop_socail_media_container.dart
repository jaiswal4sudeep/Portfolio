import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/app_constant.dart';

class DesktopSocialMediaContainer extends StatelessWidget {
  const DesktopSocialMediaContainer({
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
              if (await canLaunchUrl(Uri.parse(SocialMediaURLs.githubURL))) {
                await launchUrl(Uri.parse(SocialMediaURLs.githubURL));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.github,
                size: 16.sp,
                color: AppConstant.titlecolor.withOpacity(0.25),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(SocialMediaURLs.linkedinURL))) {
                await launchUrl(Uri.parse(SocialMediaURLs.linkedinURL));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 16.sp,
                color: AppConstant.titlecolor.withOpacity(0.25),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(SocialMediaURLs.callURL))) {
                await launchUrl(Uri.parse(SocialMediaURLs.callURL));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.phone,
                size: 16.sp,
                color: AppConstant.titlecolor.withOpacity(0.25),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(SocialMediaURLs.twitterURL))) {
                await launchUrl(Uri.parse(SocialMediaURLs.twitterURL));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.twitter,
                size: 16.sp,
                color: AppConstant.titlecolor.withOpacity(0.25),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(SocialMediaURLs.igURL))) {
                await launchUrl(Uri.parse(SocialMediaURLs.igURL));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.instagram,
                size: 16.sp,
                color: AppConstant.titlecolor.withOpacity(0.25),
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
