import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/app_constant.dart';
import '../b_dashboard/dashboard_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigatetoDashboard();
  }

  navigatetoDashboard() async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    ).then(
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: ((context) => const DashboardMain()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Lottie.asset(
                'assets/animation/splashAnimation.json',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fitWidth,
                repeat: false,
              ),
            ),
            Center(
              child: Image.asset(
                'assets/images/PortfolioLogoTransparent.png',
                height: 180.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
