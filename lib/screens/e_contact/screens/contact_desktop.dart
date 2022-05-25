import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../widgets/contact_section.dart';

class ContactDesktop extends HookWidget {
  const ContactDesktop({Key? key, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = useTextEditingController();
    final email = useTextEditingController();
    final message = useTextEditingController();
    final formkey = GlobalKey<FormState>();
    const double width = 864;

    return ContactSection(
      formkey: formkey,
      width: width,
      name: name,
      email: email,
      message: message,
    );
  }
}
