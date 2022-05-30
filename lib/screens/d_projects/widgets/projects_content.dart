import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/app_constant.dart';

class ProjectsContent extends HookConsumerWidget {
  const ProjectsContent({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppinioSwiperController controller = AppinioSwiperController();
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
                    Center(
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: AppinioSwiper(
                          cards: [
                            Container(
                              alignment: Alignment.center,
                              color: Colors.blue,
                              child: const Text('1'),
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: Colors.amberAccent,
                              child: const Text('2'),
                            ),
                            Container(
                              alignment: Alignment.center,
                              color: Colors.redAccent,
                              child: const Text('3'),
                            ),
                          ],
                          controller: controller,
                          
                          onEnd: () {
                            controller.unswipe();
                          },
                        ),
                      ),
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
