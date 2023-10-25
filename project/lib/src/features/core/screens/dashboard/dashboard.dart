import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/src/constants/color.dart';
import 'package:project/src/constants/image_strings.dart';
import 'package:project/src/constants/size.dart';
import 'package:project/src/constants/text_strings.dart';
import 'package:project/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:project/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:project/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:project/src/features/core/screens/dashboard/widgets/top_courses.dart';
import 'package:project/src/features/core/screens/profile/profile_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu, color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(tAppName, style: Theme.of(context).textTheme.headline4),
          centerTitle: true,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20, top: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: tCardBgColor),
              child: IconButton(
                onPressed: () {
                  Get.to(() => ProfileScreen());
                },
                icon: const Image(image: AssetImage(tUserProfileImage)),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDashboardPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Heading
                Text(tDashboardTitle, style: txtTheme.bodyText1),
                Text(tDashboardHeading, style: txtTheme.headline3),
                const SizedBox(height: tDashboardPadding),

                // Search Box
                DashboardSearch(txtTheme: txtTheme),
                const SizedBox(height: tDashboardPadding),

                // Categories
                DashboardCategories(txtTheme: txtTheme),

                // Banners
                const SizedBox(height: 15),
                DashboardBanners(txtTheme: txtTheme),

                const SizedBox(height: tDashboardPadding),
                // Top Course
                Text(tDashboardTopCourses,
                    style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),
                DashboardTopCourse(txtTheme: txtTheme)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
