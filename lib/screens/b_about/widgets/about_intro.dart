import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutIntro extends StatelessWidget {
  const AboutIntro({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 520.w,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Hello! I\'m Sudeep, a Freelancer based in Raebareli, IN. I enjoy creating things that live on the internet, whether that be applications, websites or anything in between. My goal is always to build products that provide pixel-perfect  experiences.\n\nShortly and currently, I am pursuing my Bachelor\'s degree in Computer Science and Engineering at AKTU, Lucknow, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis.',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                height: 1.1.sp,
              ),
        ),
      ),
    );
  }
}
