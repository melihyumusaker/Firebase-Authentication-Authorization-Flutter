import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/src/constants/color.dart';
import 'package:project/src/constants/image_strings.dart';
import 'package:project/src/constants/text_strings.dart';
import 'package:project/src/features/core/screens/profile/profile_screen.dart';

class DashboardAppBar extends StatelessWidget  {
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              Get.to(() => const ProfileScreen());
            },
            icon: const Image(image: AssetImage(tUserProfileImage)),
          ),
        )
      ],
    );
  }

}
