import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key, required this.width, required this.height})
      : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Text(
          'HomeMobile',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
