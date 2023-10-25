import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/src/constants/size.dart';
import 'package:project/src/constants/text_strings.dart';
import 'package:project/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:project/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';

class ForgetPAsswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        context: context,
        builder: (context) => Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tForgetPasswordTitle,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      tForgetPasswordSubTitle,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 30.0),
                    ForgetPasswordBtnWidget(
                      btnIcon: Icons.mail_outline_rounded,
                      title: tEmail,
                      subTitle: tResetViaEMail,
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(() =>const ForgetPasswordMailScreen());
                      },
                    ),
                    const SizedBox(height: 20.0),
                    ForgetPasswordBtnWidget(
                      btnIcon: Icons.mobile_friendly_rounded,
                      title: tPhoneNo,
                      subTitle: tResetViaPhone,
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ));
  }
}
