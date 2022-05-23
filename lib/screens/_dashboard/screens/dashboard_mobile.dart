import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/a_home/screens/home_mobile.dart';
import 'package:portfolio/screens/b_about/screens/about_mobile.dart';
import 'package:portfolio/screens/c_experience/screens/experience_mobile.dart';
import 'package:portfolio/screens/d_work/screens/work_mobile.dart';
import 'package:portfolio/screens/e_contact/screens/contact_mobile.dart';
import '../../../core/app_constant.dart';
import '../widgets/mobile_drawer.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Row(
            children: [
              Container(
                width: width * 0.5,
                height: height,
                decoration: BoxDecoration(
                  color: AppConstant.backgroundColor,
                  border: Border(
                    right: BorderSide(
                      color: AppConstant.preBGColor.withOpacity(0.5),
                      width: 0.5,
                    ),
                  ),
                ),
              ),
              Container(
                width: width * 0.5,
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
          ),
          endDrawer: MobileDrawer(width: width),
          body: Center(
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                scrollbars: false,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  HomeMobile(
                    height: height,
                    width: width,
                  ),
                  AboutMobile(
                    height: height,
                    width: width,
                  ),
                  ExperienceMobile(
                    height: height,
                    width: width,
                  ),
                  WorkMobile(
                    height: height,
                    width: width,
                  ),
                  ContactMobile(
                    height: height,
                    width: width,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
