import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/app_constant.dart';
import 'package:portfolio/screens/a_home/screens/home_desktop.dart';
import 'package:portfolio/screens/b_about/screens/about_desktop.dart';
import 'package:portfolio/screens/c_experience/screens/experience_desktop.dart';
import 'package:portfolio/screens/d_work/screens/work_desktop.dart';
import 'package:portfolio/screens/e_contact/screens/contact_desktop.dart';
import '../widgets/desktop_mail_container.dart';
import '../widgets/desktop_navbar.dart';
import '../widgets/desktop_socail_media_container.dart';

class DashboardDesktop extends HookWidget {
  const DashboardDesktop(this.width, this.height, {Key? key}) : super(key: key);
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
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
            title: Image.asset(
              'assets/images/PortfolioLogoSmall.png',
              height: 50.sp,
            ),
            elevation: 0,
            actions: const [
              DesktopNavBar(),
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
                    physics: const BouncingScrollPhysics(),
                    children: [
                      HomeDesktop(
                        height: height,
                        width: width,
                      ),
                      AboutDesktop(
                        height: height,
                        width: width,
                      ),
                      ExperienceDesktop(
                        height: height,
                        width: width,
                      ),
                      WorkDesktop(
                        height: height,
                        width: width,
                      ),
                      ContactDesktop(
                        height: height,
                        width: width,
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
        ),
      ],
    );
  }
}
