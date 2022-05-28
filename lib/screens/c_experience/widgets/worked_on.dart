import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/app_constant.dart';

class WorkedOn extends StatelessWidget {
  const WorkedOn({
    Key? key,
    required this.companyInfo,
  }) : super(key: key);
  final Function companyInfo;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          companyInfo();
        },
        child: Row(
          children: [
            SizedBox(
              width: 70,
              height: 110,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 3,
                      height: 110,
                      color: AppConstant.titlecolor,
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: AppConstant.primaryColor,
                      radius: 17.r,
                      child: FaIcon(
                        FontAwesomeIcons.code,
                        color: AppConstant.titlecolor,
                        size: 12.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 2.0,
                    ),
                    child: Text(
                      'March 2022 - Present',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: AppConstant.primaryColor,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 4.0,
                    ),
                    child: Text(
                      'TechDockLabs, Lucknow',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 2.0,
                    ),
                    child: Text(
                      'Flutter Developer - Intern',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: AppConstant.subtitlecolor,
                            fontSize: 9.sp,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 2.0,
                    ),
                    child: Text(
                      'Loram Epsum Loram Epsum Loram Epsum',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: AppConstant.subtitlecolor,
                            fontSize: 9.sp,
                          ),
                    ),
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
