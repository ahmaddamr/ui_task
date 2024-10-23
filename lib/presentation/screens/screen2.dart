import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/presentation/widgets/user_data_widget.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/user_form_widget.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 25.w,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset('assets/images/icon2.png'),
            ),
            const CustomTextField(
              fillColor: Colors.black,
            )
          ],
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/th.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 6.h,
              ),
              const UserDataWidget(),
              SizedBox(
                height: 7.h,
              ),
              const UserFormWidget(),
            ],
          )
        ],
      ),
    );
  }
}
