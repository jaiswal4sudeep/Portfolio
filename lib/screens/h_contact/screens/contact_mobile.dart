import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/contact_section.dart';

class ContactMobile extends HookWidget {
  const ContactMobile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final name = useTextEditingController();
    final email = useTextEditingController();
    final subject = useTextEditingController();
    final message = useTextEditingController();
    final formkey = GlobalKey<FormState>();
    double width = 300.w;

    return Column(
      children: [
        ContactSection(
          subject,
          formkey: formkey,
          width: width,
          name: name,
          email: email,
          message: message,
          isMobile: true,
        ),
      ],
    );
  }
}
