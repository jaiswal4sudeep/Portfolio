import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../widgets/home_content.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });
  final double width;
  final double height;
  final AutoScrollController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height - 64,
      width: width,
      child: HomeContent(controller),
    );
  }
}
