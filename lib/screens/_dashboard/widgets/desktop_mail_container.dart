import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/screens/_dashboard/application/url_provider.dart';
import '../../../../core/app_constant.dart';

class DesktopMailContainer extends HookConsumerWidget {
  const DesktopMailContainer({
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
              ref.read(urlProvider.notifier).openURL(SocialMediaURLs.mailURL);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'jaiswal4sudeep@gmail.com',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        letterSpacing: 2.sp,
                        color: AppConstant.preBGColor,
                      ),
                ),
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
