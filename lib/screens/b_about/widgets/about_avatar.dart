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
              width: 136,
              height: 136,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: AppConstant.primaryColor,
                  width: 1,
                ),
              ),
            ),
          ),
          SizedBox(
            child: Image.asset(
              'assets/images/avatarimg.png',
              height: 136,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
