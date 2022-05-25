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
          'Hello! I\'m Sudeep, a Freelancer based in Raebareli, IN.\nI enjoy creating things that live on the internet, wheather that be applications, websites or anything in between. My goal is to always build products that provide pixel-perfet, performant experiences.\n\nShortly currently, I am pursing my Bachlor\'s degree in Computer Science and Engineering at AKTU, Lucknow, as well as doing freelancing where I work on a wide variety of intresting and meaningful projects on a daily basis.',
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontSize: 12.sp,
              ),
        ),
      ),
    );
  }
}
