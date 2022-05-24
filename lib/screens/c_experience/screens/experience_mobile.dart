import 'package:flutter/material.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: Text(
          'ExperienceMobile',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
