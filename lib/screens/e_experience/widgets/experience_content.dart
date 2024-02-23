import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/app_constant.dart';
import '../../b_dashboard/application/url_provider.dart';
import 'worked_on.dart';

class ExperienceContent extends HookConsumerWidget {
  const ExperienceContent({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          Container(
            width: width,
            decoration: BoxDecoration(
              color: AppConstant.backgroundColor,
              border: Border.all(
                color: AppConstant.preBGColor.withOpacity(0.5),
                width: 1.sp,
              ),
            ),
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Experience',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    WorkedOn(
                      companyInfo: () {
                        ref
                            .read(urlProvider.notifier)
                            .openURL(SocialMediaURLs.techDockLabs);
                      },
                      period: 'March 2022 - June 2022',
                      comName: 'TechDockLabs, Lucknow',
                      post: 'Flutter Developer - Intern',
                      desc: 'Working as a Flutter Intern to enhance my skills',
                    ),
                    WorkedOn(
                      companyInfo: () {},
                      period: 'July 2022 - Present',
                      comName: 'Freelancing',
                      post: 'Flutter Developer',
                      desc: 'Working as a Freelance Full Stack Flutter',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
