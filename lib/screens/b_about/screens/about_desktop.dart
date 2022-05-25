import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/app_constant.dart';
import 'package:portfolio/screens/b_about/widgets/about_intro.dart';
import 'package:portfolio/screens/b_about/widgets/skill_meter.dart';
import '../widgets/about_avatar.dart';
import '../widgets/about_education.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Container(
          width: 864,
          decoration: BoxDecoration(
            color: AppConstant.backgroundColor,
            border: Border.all(
              color: AppConstant.preBGColor.withOpacity(0.5),
              width: 1.sp,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AboutAvatar(),
              SizedBox(
                width: 460.sp,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AboutIntro(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        top: 12.0,
                      ),
                      child: Text(
                        'Education',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AboutEducation(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'Skills',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'App Development',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: SkillMeter(
                        meterValue: 280.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'Web Development',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: SkillMeter(
                        meterValue: 330.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'UI/UX Design',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: SkillMeter(
                        meterValue: 370.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        'Database',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: SkillMeter(
                        meterValue: 350.sp,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
