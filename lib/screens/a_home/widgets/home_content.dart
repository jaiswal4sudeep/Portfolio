import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/screens/_dashboard/application/url_provider.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../core/app_constant.dart';

class HomeContent extends HookConsumerWidget {
  const HomeContent(
    this.controller, {
    Key? key,
  }) : super(key: key);

  final AutoScrollController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEY THERE',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          'Sudeep Jaiswal',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                FontAwesomeIcons.caretRight,
                size: 16.sp,
                color: AppConstant.primaryColor,
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Flutter Developer',
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    cursor: '|',
                  ),
                  TypewriterAnimatedText(
                    'Graphic Designer',
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    cursor: '|',
                  ),
                  TypewriterAnimatedText(
                    'VFX Artist',
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    cursor: '|',
                  ),
                  TypewriterAnimatedText(
                    'Freelancer',
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    cursor: '|',
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        AnimatedButton(
          onPress: () {
            ref.read(urlProvider.notifier).openURL(SocialMediaURLs.resumeURL);
          },
          height: 35.h,
          width: 35.w,
          text: 'Resume',
          isReverse: true,
          selectedTextColor: Colors.black,
          animatedOn: AnimatedOn.onHover,
          transitionType: TransitionType.TOP_CENTER_ROUNDER,
          textStyle: Theme.of(context).textTheme.headlineSmall!,
          backgroundColor: Colors.black,
          borderColor: Colors.white,
          borderWidth: 1,
        ),
      ],
    );
  }
}
