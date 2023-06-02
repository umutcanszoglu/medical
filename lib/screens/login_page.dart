import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/const/theme.dart';
import 'package:medical/controllers/input_controller.dart';
import 'package:medical/controllers/role_controller.dart';
import 'package:medical/screens/register_page.dart';
import 'package:medical/widgets/my_button.dart';
import 'package:medical/widgets/my_divider.dart';
import 'package:medical/widgets/my_textfield.dart';
import 'package:type_text/type_text.dart';

class LoginPage extends GetView<RoleController> {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final inputController = Get.put(InputController());
    return Scaffold(
      backgroundColor: CColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Lottie.asset(
                "assets/lotties/${controller.role.value ? "doctor" : "patient"}.json",
                height: 300.h,
              ),
              TypeText(
                "Welcome!",
                duration: const Duration(seconds: 1),
                style: FontStyles.myFont.copyWith(fontSize: 48.sp),
                textAlign: TextAlign.center,
              ),
              TypeText(
                controller.role.value ? "Medical Staff Log In" : "Patient Log In",
                duration: const Duration(seconds: 1),
                style: FontStyles.myFont.copyWith(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.h),
              MyTextField(
                hintText:
                    controller.role.value ? "Medical Staff National ID" : "Patient National ID",
                prefixIcon: const Icon(Icons.person, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.logId,
              ),
              SizedBox(height: 16.h),
              MyTextField(
                isObscure: true,
                hintText: "Password",
                prefixIcon: const Icon(Icons.lock, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.logPass,
              ),
              SizedBox(height: 32.h),
              MyButton(
                text: "Log In",
                textStyle: FontStyles.myFont.copyWith(fontSize: 20.sp, color: CColors.black),
                width: double.infinity,
                height: 60.h,
                color: CColors.gold,
                onTap: () {
                  if (controller.role.value) {
                    inputController.doctorLogin();
                  } else {
                    inputController.patientLogin();
                  }
                },
              ),
              SizedBox(height: 16.h),
              MyDivider(middle: Text("OR", style: FontStyles.myFont)),
              SizedBox(height: 16.h),
              MyButton(
                text: "Sign Up",
                textStyle: FontStyles.myFont.copyWith(fontSize: 20.sp, color: CColors.black),
                width: double.infinity,
                height: 60.h,
                color: CColors.orange,
                onTap: () => Get.to(const RegisterPage()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
