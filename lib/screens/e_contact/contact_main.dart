// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/screens/e_contact/screens/contact_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screens/contact_mobile.dart';

class ContactMain extends StatelessWidget {
  const ContactMain({Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactMobile(
        height: height,
        width: width,
      ),
      desktop: ContactDesktop(
        height: height,
        width: width,
      ),
    );
  }
}
