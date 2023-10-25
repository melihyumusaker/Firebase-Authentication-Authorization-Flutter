

import 'package:flutter/material.dart';
import 'package:project/src/constants/image_strings.dart';
import 'package:project/src/constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon:const Image(
              image: AssetImage(tGoogleLogoImage),
              width: 20.0,
            ),
            label: Text(tSignInWithGoogle.toUpperCase()),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: tAldreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.bodyText1),
              TextSpan(text: tLogin.toUpperCase())
            ])))
      ],
    );
  }
}
