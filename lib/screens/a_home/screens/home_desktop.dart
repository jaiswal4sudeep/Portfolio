import 'package:flutter/material.dart';
import '../widgets/home_content.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: const HomeContent(),
    );
  }
}
