import 'package:flutter/material.dart';

class WorkDesktop extends StatelessWidget {
  const WorkDesktop({Key? key, required this.width, required this.height}) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: Center(
        child: Text(
          'WorkDesktop',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
