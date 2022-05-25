import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/home_content.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Padding(
        padding: EdgeInsets.only(
          left: 32.w,
        ),
        child: const HomeContent(),
      ),
    );
  }
}
