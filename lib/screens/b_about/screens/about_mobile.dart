import 'package:flutter/material.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Center(
        child: Text(
          'AboutMobile',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
