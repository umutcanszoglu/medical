import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical/const/theme.dart';

class PatientCard extends StatelessWidget {
  const PatientCard(
      {super.key, this.name, this.birth, this.id, this.gender, this.adress, this.onTap});
  final String? name;
  final String? birth;
  final String? id;
  final String? gender;
  final String? adress;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            color: CColors.cream,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name: $name",
                style: FontStyles.myFont.copyWith(color: CColors.black, fontSize: 18.sp),
              ),
              Text(
                "Date of Birth: $birth",
                style: FontStyles.myFont.copyWith(color: CColors.black, fontSize: 18.sp),
              ),
              Text(
                "National ID: $id",
                style: FontStyles.myFont.copyWith(color: CColors.black, fontSize: 18.sp),
              ),
              Text(
                "Gender: $gender",
                style: FontStyles.myFont.copyWith(color: CColors.black, fontSize: 18.sp),
              ),
              Text(
                "Adress: $gender",
                style: FontStyles.myFont.copyWith(color: CColors.black, fontSize: 18.sp),
              ),
            ],
          )),
    );
  }
}
