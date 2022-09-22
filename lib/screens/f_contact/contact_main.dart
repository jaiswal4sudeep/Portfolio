import 'package:flutter/material.dart';
import 'package:portfolio/screens/f_contact/screens/contact_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screens/contact_mobile.dart';

class ContactMain extends StatelessWidget {
  const ContactMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ContactMobile(),
      desktop: const ContactDesktop(),
    );
  }
}
