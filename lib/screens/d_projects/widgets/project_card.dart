import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/app_constant.dart';

class ProjectCard extends HookConsumerWidget {
  const ProjectCard(
    this.projectCategory,
    this.projectName,
    this.projectDescription,
    this.projectStars,
    this.projectForks,
    this.projectLinkOpener, {
    Key? key,
  }) : super(key: key);
  final String projectCategory;
  final String projectName;
  final String projectDescription;
  final String projectStars;
  final String projectForks;
  final Function() projectLinkOpener;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: projectLinkOpener,
      child: Container(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8.sp,
                left: 16.sp,
              ),
              child: Text(
                projectCategory,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppConstant.primaryColor,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 2.sp,
                left: 16.sp,
              ),
              child: Text(
                projectName,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 2.sp,
                left: 16.sp,
              ),
              child: Text(
                projectDescription,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppConstant.subtitlecolor,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 6.sp,
                left: 20.sp,
                right: 20.sp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 8.sp,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        projectStars,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        FontAwesomeIcons.codeFork,
                        size: 8.sp,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        projectForks,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const Icon(
                    FontAwesomeIcons.github,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
