import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/app_constant.dart';
import '../../c_home/screens/home_desktop.dart';
import '../../d_about/screens/about_desktop.dart';
import '../../e_experience/screens/experience_desktop.dart';
import '../../f_projects/screens/projects_desktop.dart';
import '../../g_achievement/screens/achv_desktop.dart';
import '../../h_contact/screens/contact_desktop.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../application/scroll_to_index.dart';
import '../widgets/desktop_mail_container.dart';
import '../widgets/desktop_navbar.dart';
import '../widgets/desktop_socail_media_container.dart';

class DashboardDesktop extends HookWidget {
  const DashboardDesktop(
    this.width,
    this.height, {
    super.key,
  });
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final AutoScrollController controller = AutoScrollController();

    return Stack(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: Row(
            children: [
              Container(
                width: width * 0.275,
                height: height,
                decoration: BoxDecoration(
                  color: AppConstant.backgroundColor,
                  border: Border(
                    right: BorderSide(
                      color: AppConstant.preBGColor.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: width * 0.15,
                height: height,
                decoration: BoxDecoration(
                  color: AppConstant.backgroundColor,
                  border: Border(
                    right: BorderSide(
                      color: AppConstant.preBGColor.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: width * 0.15,
                height: height,
                decoration: BoxDecoration(
                  color: AppConstant.backgroundColor,
                  border: Border(
                    right: BorderSide(
                      color: AppConstant.preBGColor.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: width * 0.15,
                height: height,
                decoration: BoxDecoration(
                  color: AppConstant.backgroundColor,
                  border: Border(
                    right: BorderSide(
                      color: AppConstant.preBGColor.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              Container(
                width: width * 0.275,
                height: height,
                decoration: const BoxDecoration(
                  color: AppConstant.backgroundColor,
                ),
              ),
            ],
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: GestureDetector(
              onTap: () {
                scollToIndex(0, controller);
              },
              child: Row(
                children: [
                  Text(
                    '<',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    ' Sudeep ',
                    style: GoogleFonts.allura(
                      fontSize: 20.sp,
                    ),
                  ),
                  Text(
                    '/>',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            elevation: 0,
            actions: [
              DesktopNavbar(
                controller: controller,
              ),
            ],
          ),
          body: Row(
            children: [
              DesktopSocialMediaContainer(
                width: width,
                height: height,
              ),
              SizedBox(
                width: width * 0.850,
                height: height,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(
                    scrollbars: false,
                  ),
                  child: ListView(
                    controller: controller,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      AutoScrollTag(
                        controller: controller,
                        index: 0,
                        key: const ValueKey(0),
                        child: HomeDesktop(
                          height: height,
                          width: width,
                          controller: controller,
                        ),
                      ),
                      AutoScrollTag(
                        controller: controller,
                        index: 1,
                        key: const ValueKey(1),
                        child: const AboutDesktop(),
                      ),
                      AutoScrollTag(
                        controller: controller,
                        index: 2,
                        key: const ValueKey(2),
                        child: const ExperienceDesktop(),
                      ),
                      AutoScrollTag(
                        controller: controller,
                        index: 3,
                        key: const ValueKey(3),
                        child: const ProjectsDesktop(),
                      ),
                      AutoScrollTag(
                        controller: controller,
                        index: 4,
                        key: const ValueKey(4),
                        child: const AchvDesktop(),
                      ),
                      AutoScrollTag(
                        controller: controller,
                        index: 5,
                        key: const ValueKey(5),
                        child: const ContactDesktop(),
                      ),
                    ],
                  ),
                ),
              ),
              DesktopMailContainer(
                width: width,
                height: height,
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppConstant.primaryColor,
            onPressed: () {
              scollToIndex(0, controller);
            },
            child: FaIcon(
              FontAwesomeIcons.anglesUp,
              size: 16.sp,
            ),
          ),
        ),
      ],
    );
  }
}
