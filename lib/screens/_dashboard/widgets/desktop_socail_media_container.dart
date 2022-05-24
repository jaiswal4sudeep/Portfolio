import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/screens/_dashboard/application/url_provider.dart';
import '../../../../core/app_constant.dart';

class DesktopSocialMediaContainer extends HookConsumerWidget {
  const DesktopSocialMediaContainer({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width * 0.0750,
      height: height,
      child: Column(
        children: [
          const Spacer(),
          GestureDetector(
            onTap: () {
              ref.read(urlProvider.notifier).openURL(SocialMediaURLs.githubURL);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.github,
                size: 16.sp,
                color: AppConstant.preBGColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref
                  .read(urlProvider.notifier)
                  .openURL(SocialMediaURLs.linkedinURL);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 16.sp,
                color: AppConstant.preBGColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref
                  .read(urlProvider.notifier)
                  .openURL(SocialMediaURLs.twitterURL);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.twitter,
                size: 16.sp,
                color: AppConstant.preBGColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              ref.read(urlProvider.notifier).openURL(SocialMediaURLs.igURL);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.instagram,
                size: 16.sp,
                color: AppConstant.preBGColor,
              ),
            ),
          ),
          Container(
            width: 0.5.w,
            height: 100.h,
            color: AppConstant.preBGColor,
          ),
        ],
      ),
    );
  }
}
