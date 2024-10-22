// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/core/utils/app_colors.dart';
import 'package:ui_task/presentation/widgets/contact_us_widget.dart';
import 'package:ui_task/presentation/widgets/custom_elevated_button.dart';
import 'package:ui_task/presentation/widgets/custom_listtile.dart';
import 'package:ui_task/presentation/widgets/custom_text_field.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pColor,
      appBar: AppBar(
        titleSpacing: 25.w,
        toolbarHeight: 80.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.r),
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(onTap: () {}, child: Image.asset('assets/images/icon.png')),
            const CustomTextField()
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          CustomElvatedButton(
              text: 'Gold Package',
              backgroundColor: Colors.black,
              borderSideColor: const Color.fromARGB(255, 255, 223, 95),
              style: TextStyle(
                  fontSize: 28,
                  color: AppColors.pColor,
                  fontWeight: FontWeight.bold),
              onPressed: () {}),
          Image.asset('assets/images/asset.png'),
          Image.asset('assets/images/img1.png'),
          Padding(
            padding: const EdgeInsets.only(right: 180.0),
            child: Text(
              'Contains:',
              style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70.0),
            child: Column(
              children: [
                CustomListtile(parameter: '60*60 ceramic'),
                CustomListtile(parameter: 'Glc painting'),
                CustomListtile(parameter: 'Wooden table'),
                CustomListtile(parameter: 'cat6 wire'),
              ],
            ),
          ),
          const ContactUsWidget()
        ],
      ),
    );
  }
}
