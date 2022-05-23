// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({Key? key, required this.width, required this.height}) : super(key: key);
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        'ContactMobile',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
