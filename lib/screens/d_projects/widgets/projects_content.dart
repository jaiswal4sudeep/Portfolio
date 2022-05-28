import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/screens/_dashboard/application/url_provider.dart';
import 'package:portfolio/screens/d_projects/widgets/projects.dart';
import 'package:swipe_deck/swipe_deck.dart';
import '../../../core/app_constant.dart';

class ProjectsContent extends HookConsumerWidget {
  const ProjectsContent({
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
                        'Projects',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: SizedBox(
                        width: 300.sp,
                        // height: 200.h,
                        child: SwipeDeck(
                          // aspectRatio: 16 / 9,
                          widgets: [
                            Projects(
                              imageAddress: 'assets/images/project_bg.jpg',
                              projectTitle: 'Drawing App',
                              projectSubtitle: 'ProjectSubtitle',
                              projectInfo: () {
                                ref
                                    .read(urlProvider.notifier)
                                    .openURL(ProjectsURL.drawingApp);
                              },
                            ),
                            Projects(
                              imageAddress: 'assets/images/project_bg.jpg',
                              projectTitle: 'Login/Sign up UI',
                              projectSubtitle: 'ProjectSubtitle',
                              projectInfo: () {},
                            ),
                            Projects(
                              imageAddress: 'assets/images/project_bg.jpg',
                              projectTitle: 'SortItOut',
                              projectSubtitle: 'ProjectSubtitle',
                              projectInfo: () {
                                ref
                                    .read(urlProvider.notifier)
                                    .openURL(ProjectsURL.sortItOutURL);
                              },
                            ),
                            Projects(
                              imageAddress: 'assets/images/project_bg.jpg',
                              projectTitle: 'Password Validation',
                              projectSubtitle: 'ProjectSubtitle',
                              projectInfo: () {
                                ref
                                    .read(urlProvider.notifier)
                                    .openURL(ProjectsURL.passwordValidationURL);
                              },
                            ),
                            Projects(
                              imageAddress: 'assets/images/project_bg.jpg',
                              projectTitle: 'Neumorphic Calculator',
                              projectSubtitle: 'ProjectSubtitle',
                              projectInfo: () {
                                ref.read(urlProvider.notifier).openURL(
                                    ProjectsURL.neumorphicCalculatorURL);
                              },
                            ),
                            Projects(
                              imageAddress: 'assets/images/project_bg.jpg',
                              projectTitle: 'Bulb Animation',
                              projectSubtitle: 'ProjectSubtitle',
                              projectInfo: () {
                                ref
                                    .read(urlProvider.notifier)
                                    .openURL(ProjectsURL.bulbAnimationURL);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
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
