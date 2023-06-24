import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/app_constant.dart';

class WorkedOn extends StatelessWidget {
  const WorkedOn({
    Key? key,
    required this.companyInfo,
    required this.period,
    required this.comName,
    required this.post,
    required this.desc,
  }) : super(key: key);
  final Function companyInfo;
  final String period;
  final String comName;
  final String post;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          companyInfo();
        },
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: [
              SizedBox(
                width: 30.w,
                height: 78.h,
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
                        radius: 18.sp,
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
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 2.0,
                      ),
                      child: Text(
                        period,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
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
                        comName,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 2.0,
                      ),
                      child: Text(
                        post,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppConstant.subtitlecolor,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 2.0,
                      ),
                      child: Text(
                        desc,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: AppConstant.subtitlecolor,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
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
