import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../b_dashboard/application/url_provider.dart';
import 'project_card.dart';

import '../../../core/app_constant.dart';
import 'custom_divider.dart';

class ProjectsContent extends HookConsumerWidget {
  const ProjectsContent({
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
                        'Projects',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ProjectCard(
                      'FLUTTER',
                      'SortItOut',
                      'Sorting Algorithm Visualizer',
                      '3',
                      '0',
                      () {
                        ref
                            .read(urlProvider.notifier)
                            .openURL(ProjectsURL.sortItOutURL);
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomDivider(
                      width: width,
                    ),
                    ProjectCard(
                      'FLUTTER',
                      'Drawing App',
                      'Simple Drawing App using Flutter CustomPaint Widget',
                      '1',
                      '2',
                      () {
                        ref
                            .read(urlProvider.notifier)
                            .openURL(ProjectsURL.drawingAppURL);
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomDivider(
                      width: width,
                    ),
                    ProjectCard(
                      'Flutter',
                      'DartUp',
                      'Dart and Flutter Learning App',
                      '0',
                      '0',
                      () {
                        ref
                            .read(urlProvider.notifier)
                            .openURL(ProjectsURL.dartUpUrl);
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomDivider(
                      width: width,
                    ),
                    ProjectCard(
                      'Python',
                      'SpaceWar',
                      'A Simple Python Game using PyGame',
                      '2',
                      '0',
                      () {
                        ref
                            .read(urlProvider.notifier)
                            .openURL(ProjectsURL.spaceWarURL);
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
          SizedBox(
            height: 25.h,
          ),
        ],
      ),
    );
  }
}
