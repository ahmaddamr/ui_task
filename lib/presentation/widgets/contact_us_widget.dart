import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/presentation/widgets/custom_elevated_button.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          width: 160.w,
          height: 40.h,
          child: CustomElvatedButton(
              text: '',
              backgroundColor: Colors.black,
              borderSideColor: Colors.transparent,
              style: const TextStyle(),
              onPressed: () {}),
        ),
        Positioned(
          top: 5,
          child: Container(
            width: 130.w,
            height: 15.h,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
          ),
        ),
        const Positioned(
          top: 0,
          child: Text(
            'Contact us',
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
