import 'package:flutter/material.dart';
import 'package:portfolio/screens/a_home/screens/home_desktop.dart';
import 'package:portfolio/screens/b_about/screens/about_desktop.dart';
import 'package:portfolio/screens/c_experience/screens/experience_desktop.dart';
import 'package:portfolio/screens/d_work/screens/work_desktop.dart';
import 'package:portfolio/screens/e_contact/screens/contact_desktop.dart';
import '../widgets/desktop_mail_container.dart';
import '../widgets/desktop_navbar.dart';
import '../widgets/desktop_socail_media_container.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop'),
        elevation: 0,
        actions: const [
          DesktopNavBar(),
        ],
      ),
      body: Row(
        children: [
          DesktopSocialMediaContainer(
            width: width,
            height: height,
          ),
          SizedBox(
            width: width * 0.850,
            height: height,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                scrollbars: false,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const [
                  HomeDesktop(),
                  AboutDesktop(),
                  ExperienceDesktop(),
                  WorkDesktop(),
                  ContactDesktop(),
                ],
              ),
            ),
          ),
          DesktopMailContainer(
            width: width,
            height: height,
          ),
        ],
      ),
    );
  }
}
