import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:project/src/constants/color.dart';
import 'package:project/src/constants/image_strings.dart';
import 'package:project/src/constants/size.dart';
import 'package:project/src/constants/text_strings.dart';
import 'package:project/src/features/authentication/models/user_model.dart';
import 'package:project/src/features/core/controller/profile_controller.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Center(
          child: Text(tEditProfile,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                    image: AssetImage(tProfileImage))),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: tPrimatyColor,
                              ),
                              child: const Icon(
                                LineAwesomeIcons.camera,
                                size: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      Form(
                          child: Column(
                        children: [
                          TextFormField(
                            initialValue: userData.fullName,
                            decoration: const InputDecoration(
                              label: Text(tFullName),
                              prefixIcon: Icon(Icons.person_outline_rounded),
                            ),
                          ),
                          const SizedBox(height: tFormHeight - 20),
                          TextFormField(
                            initialValue: userData.email,
                            decoration: const InputDecoration(
                              label: Text(tEmail),
                              prefixIcon: Icon(LineAwesomeIcons.envelope),
                            ),
                          ),
                          const SizedBox(height: tFormHeight - 20),
                          TextFormField(
                            initialValue: userData.phoneNo,
                            decoration: const InputDecoration(
                              label: Text(tPhoneNo),
                              prefixIcon: Icon(LineAwesomeIcons.phone),
                            ),
                          ),
                          const SizedBox(height: tFormHeight - 20),
                          TextFormField(
                            initialValue: userData.password,
                            decoration: const InputDecoration(
                              label: Text(tPassword),
                              prefixIcon: Icon(Icons.fingerprint),
                            ),
                          ),
                          const SizedBox(height: tFormHeight + 5),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () =>
                                  Get.to(() => const UpdateProfileScreen()),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: tPrimatyColor,
                                  side: BorderSide.none,
                                  shape: const StadiumBorder()),
                              child: const Text(
                                tEditProfile,
                                style: TextStyle(color: tDarkColor),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text.rich(TextSpan(
                                  text: tJoined,
                                  style: TextStyle(fontSize: 12),
                                  children: [
                                    TextSpan(
                                        text: tJoinedAt,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ])),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.redAccent.withOpacity(0.1),
                                  elevation: 0,
                                  foregroundColor: Colors.red,
                                  shape: const StadiumBorder(),
                                  side: BorderSide.none,
                                ),
                                child: const Text(tDelete),
                              ),
                            ],
                          )
                        ],
                      ))
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(child: Text("Something went wrong"));
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
