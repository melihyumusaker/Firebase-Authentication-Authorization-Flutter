import 'package:flutter/material.dart';
import 'package:project/src/common_widgets/form/form_header_widget.dart';
import 'package:project/src/constants/image_strings.dart';
import 'package:project/src/constants/size.dart';
import 'package:project/src/constants/text_strings.dart';
import 'package:project/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:project/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                 SignUpFormWidget(),
                 SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
