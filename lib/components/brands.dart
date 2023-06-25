import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Brands extends StatelessWidget {
   Brands({super.key, this.imagePath});
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 15.h),
      width: 100.w,
      height: 100.h,
      decoration:const BoxDecoration(
          color: Color(0xffF6F6F6),
          shape: BoxShape.circle
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset(imagePath!),
      ),
    )
    ;
  }
}
