import 'package:flutter/material.dart';

import '../widgets/achv_content.dart';

class AchvDesktop extends StatelessWidget {
  const AchvDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double width = 864;

    return const AchvContent(
      width: width,
    );
  }
}
