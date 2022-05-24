import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/a_home/screens/home_mobile.dart';
import 'package:portfolio/screens/b_about/screens/about_mobile.dart';
import 'package:portfolio/screens/c_experience/screens/experience_mobile.dart';
import 'package:portfolio/screens/d_work/screens/work_mobile.dart';
import 'package:portfolio/screens/e_contact/screens/contact_mobile.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../../../core/app_constant.dart';
import '../widgets/mobile_drawer.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    AutoScrollController controller = AutoScrollController(
      viewportBoundaryGetter: () => Rect.fromLTRB(
        0,
        0,
        0,
        MediaQuery.of(context).padding.bottom,
      ),
      axis: Axis.vertical,
    );
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
            title: GestureDetector(
              onTap: () {
                controller.scrollToIndex(
                  0,
                  duration: const Duration(
                    seconds: 2,
                  ),
                  preferPosition: AutoScrollPosition.begin,
                );
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
          ),
          endDrawer: MobileDrawer(
            width: width,
            controller: controller,
          ),
          body: Center(
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                scrollbars: false,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                children: [
                  AutoScrollTag(
                    controller: controller,
                    index: 0,
                    key: const ValueKey(0),
                    child: HomeMobile(
                      height: height,
                      width: width,
                    ),
                  ),
                  AutoScrollTag(
                    controller: controller,
                    index: 1,
                    key: const ValueKey(1),
                    child: AboutMobile(
                      height: height,
                      width: width,
                    ),
                  ),
                  AutoScrollTag(
                    controller: controller,
                    index: 2,
                    key: const ValueKey(2),
                    child: ExperienceMobile(
                      height: height,
                      width: width,
                    ),
                  ),
                  AutoScrollTag(
                    controller: controller,
                    index: 3,
                    key: const ValueKey(3),
                    child: WorkMobile(
                      height: height,
                      width: width,
                    ),
                  ),
                  AutoScrollTag(
                    controller: controller,
                    index: 4,
                    key: const ValueKey(4),
                    child: ContactMobile(
                      height: height,
                      width: width,
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppConstant.primaryColor,
            onPressed: () {
              controller.scrollToIndex(
                0,
                duration: const Duration(
                  seconds: 2,
                ),
                preferPosition: AutoScrollPosition.begin,
              );
            },
            child: Icon(
              Icons.keyboard_arrow_up_rounded,
              size: 24.sp,
            ),
          ),
        ),
      ],
    );
  }
}
