import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical/const/theme.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    super.key,
    this.middle,
  });

  final Widget? middle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: CColors.cream,
            thickness: 2,
            indent: 16,
          ),
        ),
        SizedBox(width: 16.w),
        middle ?? const SizedBox(),
        SizedBox(width: 16.w),
        Expanded(
          child: Divider(
            color: CColors.cream,
            thickness: 2,
            endIndent: 16,
          ),
        ),
      ],
    );
  }
}
