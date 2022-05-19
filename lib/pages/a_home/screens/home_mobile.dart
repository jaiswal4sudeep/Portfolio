// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      child: Text(
        'HomeMobile',
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
