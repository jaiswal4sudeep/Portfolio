import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/screens/_dashboard/application/url_provider.dart';
import 'package:portfolio/screens/c_experience/widgets/worked_on.dart';
import '../../../core/app_constant.dart';

class ExperienceContent extends HookConsumerWidget {
  const ExperienceContent({
    Key? key,
    required this.width,
  }) : super(key: key);

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
                        style: Theme.of(context).textTheme.headline3,
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
