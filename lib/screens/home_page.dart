import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/const/theme.dart';
import 'package:medical/controllers/role_controller.dart';
import 'package:medical/screens/login_page.dart';
import 'package:medical/widgets/my_button.dart';
import 'package:medical/widgets/my_divider.dart';
import 'package:type_text/type_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RoleController());
    return Scaffold(
      backgroundColor: CColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform.scale(scale: 1.5, child: Lottie.asset("assets/lotties/hearth.json")),
              TypeText(
                "We Wish You Healthy Days",
                style: FontStyles.myFont.copyWith(fontSize: 24.sp),
                duration: const Duration(seconds: 1),
              ),
              MyButton(
                text: "Medical Staff",
                textStyle: FontStyles.myFont.copyWith(fontSize: 20.sp, color: CColors.black),
                width: double.infinity,
                height: 60.h,
                color: CColors.gold,
                onTap: () {
                  controller.role.value = true;

                  Get.to(const LoginPage());
                },
              ),
              MyDivider(
                  middle: Icon(Icons.health_and_safety_outlined, color: CColors.cream, size: 35)),
              MyButton(
                text: "Patient",
                textStyle: FontStyles.myFont.copyWith(fontSize: 20.sp, color: CColors.black),
                width: double.infinity,
                height: 60.h,
                color: CColors.gold,
                onTap: () {
                  controller.role.value = false;

                  Get.to(const LoginPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
