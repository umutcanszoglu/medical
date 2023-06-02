import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical/const/patients.dart';
import 'package:medical/const/theme.dart';
import 'package:medical/controllers/input_controller.dart';
import 'package:medical/widgets/patient_card.dart';
import 'package:type_text/type_text.dart';

class DoctorsPage extends GetView<InputController> {
  const DoctorsPage({super.key});

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
                    controller.getDoctor().name,
                    duration: const Duration(seconds: 1),
                    style: FontStyles.myFont.copyWith(fontSize: 24.sp, color: CColors.orange),
                  )
                ],
              ),
              SizedBox(height: 32.h),
              TypeText(
                "Patients",
                duration: const Duration(seconds: 1),
                style: FontStyles.myFont.copyWith(fontSize: 32.sp),
              ),
              SizedBox(height: 16.h),
              ...Patients.patients.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: PatientCard(
                        name: e.value.name,
                        birth: e.value.birth,
                        id: e.value.id,
                        gender: e.value.gender,
                        adress: e.value.adress,
                        onTap: () {
                          Get.dialog(
                            AlertDialog(
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                              actionsPadding:
                                  EdgeInsets.only(bottom: 16.h, left: 24.w, right: 24.w),
                              actionsAlignment: MainAxisAlignment.center,
                              backgroundColor: CColors.cream,
                              title: Text(
                                e.value.name,
                                style: FontStyles.myFont.copyWith(color: CColors.black),
                                textAlign: TextAlign.center,
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset("assets/images/ekg.png"),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
