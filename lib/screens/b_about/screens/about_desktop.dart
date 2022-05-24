import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/app_constant.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Container(
          width: 864,
          height: 2000,
          decoration: BoxDecoration(
            color: AppConstant.backgroundColor,
            border: Border.all(
              color: AppConstant.preBGColor.withOpacity(0.5),
              width: 1.sp,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        left: 12,
                      ),
                      child: Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                            color: AppConstant.primaryColor,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 120,
                      decoration: BoxDecoration(
                        color: AppConstant.titlecolor,
                        border: Border.all(
                          color: AppConstant.titlecolor,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: 650,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Hello! I\'m Sudeep, a Freelancer based in Raebareli, IN.\nI enjoy creating things that live on the internet, wheather that be applications, websites or anything in between. My goal is to always build products that provide pixel-perfet, performant experiences.\n\nShortly currently, I am pursing my Bachlor\'s degree in Computer Science and Engineering at AKTU, Lucknow, as well as doing freelancing where I work on a wide variety of intresting and meaningful projects on a daily basis.',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 12.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Education',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100,
                            height: 280,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    width: 2,
                                    height: 500,
                                    color: AppConstant.subtitlecolor,
                                  ),
                                ),
                                const Positioned(
                                  left: 25,
                                  top: 20,
                                  child: CircleAvatar(
                                    backgroundColor: AppConstant.primaryColor,
                                    radius: 25,
                                    child: FaIcon(
                                      Icons.school_rounded,
                                      color: AppConstant.titlecolor,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 25,
                                  top: 120,
                                  child: CircleAvatar(
                                    backgroundColor: AppConstant.primaryColor,
                                    radius: 25,
                                    child: FaIcon(
                                      Icons.book,
                                      color: AppConstant.titlecolor,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 25,
                                  top: 210,
                                  child: CircleAvatar(
                                    backgroundColor: AppConstant.primaryColor,
                                    radius: 25,
                                    child: FaIcon(
                                      Icons.book,
                                      color: AppConstant.titlecolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 16,
                            ),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. A.P.J. Kalam Technical University, Lucknow',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Bachlors of Technology\n2019-Present',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                            fontSize: 9.sp,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    'New Standard Public School, Raebareli',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Intermediate\n2017-2019',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                            fontSize: 9.sp,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    'New Standard Public School, Raebareli',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'High School\n2015-2017',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                            fontSize: 9.sp,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Skills',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'App Development',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 500,
                        height: 4,
                        color: AppConstant.subtitlecolor.withOpacity(0.3),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: AppConstant.primaryColor,
                          width: 350,
                          height: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Web Development',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 500,
                        height: 4,
                        color: AppConstant.subtitlecolor.withOpacity(0.3),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: AppConstant.primaryColor,
                          width: 430,
                          height: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Graphic Designing',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 500,
                        height: 4,
                        color: AppConstant.subtitlecolor.withOpacity(0.3),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: AppConstant.primaryColor,
                          width: 450,
                          height: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Backend Development',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 10.sp,
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 500,
                        height: 4,
                        color: AppConstant.subtitlecolor.withOpacity(0.3),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          color: AppConstant.primaryColor,
                          width: 270,
                          height: 4,
                        ),
                      ),
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
