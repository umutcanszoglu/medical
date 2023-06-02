import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical/const/theme.dart';
import 'package:medical/controllers/input_controller.dart';
import 'package:medical/controllers/role_controller.dart';
import 'package:medical/widgets/my_button.dart';
import 'package:medical/widgets/my_textfield.dart';
import 'package:type_text/type_text.dart';

class RegisterPage extends GetView<RoleController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final inputController = Get.find<InputController>();
    return Scaffold(
      backgroundColor: CColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              TypeText(
                "Create Account",
                duration: const Duration(seconds: 1),
                style: FontStyles.myFont.copyWith(fontSize: 40.sp, color: CColors.orange),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.h),
              MyTextField(
                hintText: "Name & Surname",
                prefixIcon: const Icon(Icons.person, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.crName,
              ),
              SizedBox(height: 16.h),
              MyTextField(
                hintText: "Phone Number",
                prefixIcon: const Icon(Icons.phone, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.crPhone,
              ),
              SizedBox(height: 16.h),
              MyTextField(
                hintText: "Date Of Birth",
                prefixIcon: const Icon(Icons.date_range, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.crBirth,
              ),
              SizedBox(height: 16.h),
              MyTextField(
                hintText: "National ID",
                prefixIcon: const Icon(Icons.emoji_flags_sharp, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.crId,
              ),
              SizedBox(height: 16.h),
              MyTextField(
                hintText: "Gender",
                prefixIcon: const Icon(Icons.autorenew_sharp, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.crGender,
              ),
              SizedBox(height: 16.h),
              MyTextField(
                hintText: "Create Password",
                prefixIcon: const Icon(Icons.key, size: 30),
                borderColor: CColors.transparent,
                fillColor: CColors.cream,
                prefixIconColor: CColors.black,
                hintColor: CColors.black,
                textColor: CColors.black,
                controller: inputController.crPass,
              ),
              SizedBox(height: 16.h),
              if (!controller.role.value)
                MyTextField(
                  hintText: "Adress",
                  prefixIcon: const Icon(Icons.location_on, size: 30),
                  borderColor: CColors.transparent,
                  fillColor: CColors.cream,
                  prefixIconColor: CColors.black,
                  hintColor: CColors.black,
                  textColor: CColors.black,
                  controller: inputController.crAdress,
                ),
              SizedBox(height: 32.h),
              MyButton(
                text: "Save And Log In",
                textStyle: FontStyles.myFont.copyWith(fontSize: 20.sp, color: CColors.black),
                width: double.infinity,
                height: 60.h,
                color: CColors.gold,
                onTap: () {
                  if (controller.role.value) {
                    inputController.addDoctor();
                  } else {
                    inputController.addPatient();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
