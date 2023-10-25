import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project/src/features/authentication/models/user_model.dart';
import 'package:project/src/repository/authentication_repository/authentication_repository.dart';
import 'package:project/src/repository/user_repository.dart/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // TextField Controllers to get the data
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  // Call this function from design & it will do the rest
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    registerUser(user.email  , user.password);
  }
}
