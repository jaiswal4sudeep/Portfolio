import 'package:flutter/material.dart';

import '../../../core/app_constant.dart';

class AboutAvatar extends StatelessWidget {
  const AboutAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 12,
            ),
            child: Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: AppConstant.primaryColor,
                  width: 1,
                ),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 120,
            decoration: BoxDecoration(
              color: AppConstant.titlecolor,
              border: Border.all(
                color: AppConstant.titlecolor,
                width: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
