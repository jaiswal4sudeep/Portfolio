import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../application/url_provider.dart';
import 'social_media_widget.dart';

import '../../../../core/app_constant.dart';

class DesktopSocialMediaContainer extends HookConsumerWidget {
  const DesktopSocialMediaContainer({
    super.key,
    required this.width,
    required this.height,
  });

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
          SocialMediaWidget(FontAwesomeIcons.github, () {
            ref.read(urlProvider.notifier).openURL(SocialMediaURLs.githubURL);
          }),
          SocialMediaWidget(FontAwesomeIcons.linkedin, () {
            ref.read(urlProvider.notifier).openURL(SocialMediaURLs.linkedinURL);
          }),
          SocialMediaWidget(FontAwesomeIcons.twitter, () {
            ref.read(urlProvider.notifier).openURL(SocialMediaURLs.twitterURL);
          }),
          SocialMediaWidget(FontAwesomeIcons.instagram, () {
            ref.read(urlProvider.notifier).openURL(SocialMediaURLs.igURL);
          }),
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
