import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/_dashboard/application/scroll_to_index.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../core/app_constant.dart';

class HomeContent extends StatelessWidget {
  const HomeContent(
    this.controller, {
    Key? key,
  }) : super(key: key);

  final AutoScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'HEY THERE',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          'Sudeep Jaiswal',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.arrow_right_rounded,
                size: 24.sp,
                color: AppConstant.primaryColor,
              ),
              AnimatedTextKit(
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Flutter Developer',
                    textStyle: Theme.of(context).textTheme.headline2,
                    cursor: '|',
                  ),
                  TypewriterAnimatedText(
                    'Graphic Designer',
                    textStyle: Theme.of(context).textTheme.headline2,
                    cursor: '|',
                  ),
                  TypewriterAnimatedText(
                    'VFX Artist',
                    textStyle: Theme.of(context).textTheme.headline2,
                    cursor: '|',
                  ),
                  TypewriterAnimatedText(
                    'Freelancer',
                    textStyle: Theme.of(context).textTheme.headline2,
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
        SizedBox(
          child: TextButton(
            onPressed: () {
              scollToIndex(4, controller);
            },
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                (states) => AppConstant.subtitlecolor.withOpacity(0.2),
              ),
              shape: MaterialStateProperty.all(
                StadiumBorder(
                  side: BorderSide(
                    color: AppConstant.titlecolor,
                    width: 1.sp,
                  ),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Get in Touch',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
