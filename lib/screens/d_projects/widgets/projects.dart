import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
    required this.imageAddress,
    required this.projectTitle,
    required this.projectSubtitle,
    required this.projectInfo,
  }) : super(key: key);

  final String imageAddress;
  final String projectTitle;
  final String projectSubtitle;
  final Function projectInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        projectInfo();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Stack(
          children: [
            Image(
              image: AssetImage(imageAddress),
              fit: BoxFit.cover,
            ),
            Container(
              width: 500.w,
              height: 500.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0),
                    Color.fromRGBO(0, 0, 0, 0),
                    Color.fromRGBO(0, 0, 0, 0.65),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectTitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    projectSubtitle,
                    style: Theme.of(context).textTheme.subtitle2,
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

// Drawing App
// Login Signup UI
// Neumorphic Calculator
// Bulb Animation
// SortItOut
// Password Validation