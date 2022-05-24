import 'package:flutter/material.dart';

class WorkMobile extends StatelessWidget {
  const WorkMobile({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Center(
        child: Text(
          'WorkMobile',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
