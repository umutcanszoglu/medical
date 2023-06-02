import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical/const/theme.dart';
import 'package:medical/controllers/input_controller.dart';
import 'package:type_text/type_text.dart';

class PatientPage extends GetView<InputController> {
  const PatientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                      controller.clearFields();
                    },
                    icon: Icon(Icons.arrow_back_ios_new, size: 30.w, color: CColors.cream),
                  ),
                  SizedBox(width: 16.w),
                  TypeText(
                    controller.getPatient().name,
                    duration: const Duration(seconds: 1),
                    style: FontStyles.myFont.copyWith(fontSize: 24.sp, color: CColors.orange),
                  )
                ],
              ),
              SizedBox(height: 32.h),
              TypeText(
                "EKG",
                duration: const Duration(seconds: 1),
                style: FontStyles.myFont.copyWith(fontSize: 32.sp),
              ),
              SizedBox(height: 16.h),
              Image.asset("assets/images/ekg.png"),
              SizedBox(height: 16.h),
              TypeText(
                "Fall Detector",
                duration: const Duration(seconds: 1),
                style: FontStyles.myFont.copyWith(fontSize: 32.sp),
              ),
              SizedBox(height: 16.h),
              TypeText(
                "Null",
                duration: const Duration(seconds: 1),
                style: FontStyles.myFont.copyWith(fontSize: 32.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
