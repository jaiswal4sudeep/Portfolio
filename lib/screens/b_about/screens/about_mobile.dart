import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/d_projects/widgets/custom_divider.dart';
import '../../../core/app_constant.dart';
import '../widgets/about_avatar.dart';
import '../widgets/about_education.dart';
import '../widgets/about_intro.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Center(
        child: Container(
          width: 300.w,
          decoration: BoxDecoration(
            color: AppConstant.backgroundColor,
            border: Border.all(
              color: AppConstant.preBGColor.withOpacity(0.5),
              width: 1.sp,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 280.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: AboutAvatar(),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AboutIntro(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CustomDivider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      top: 12.0,
                    ),
                    child: Text(
                      'Education',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AboutEducation(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: CustomDivider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'Skills',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'App Development (Flutter)',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 11.sp,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'DSA (C/C++, Dart)',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 11.sp,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'Web Development (HTML, CSS, JS, jQuery, Bootstrap)',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 11.sp,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'Graphics and UI/UX Design (Photoshop, Illustrator, Figma)',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 11.sp,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Text(
                      'Database (SQL, MongoDB, Firebase)',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 11.sp,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
