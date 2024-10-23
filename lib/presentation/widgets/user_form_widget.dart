import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors.dart';
import 'custom_elevated_button.dart';

class UserFormWidget extends StatelessWidget {
  const UserFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 560.h,
      decoration: BoxDecoration(
        color: AppColors.pColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Special Request? \nNo Problem!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 22.0),
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.black,
                      size: 25.sp,
                    ),
                  ),
                )
              ],
            ),
            const Text(
              'Name',
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              'Email',
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              'phone',
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Category',
                ),
                items: ['Option 1', 'Option 2', 'Option 3']
                    .map(
                      (category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ),
                    )
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Location',
                ),
                items: ['Option 1', 'Option 2', 'Option 3']
                    .map(
                      (category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ),
                    )
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              'Notes',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 6.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: const TextField(
                maxLines: 3,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 4)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 4)),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: SizedBox(
                width: 130.w,
                height: 30.h,
                child: CustomElvatedButton(
                    text: 'Send',
                    backgroundColor: Colors.black,
                    borderSideColor: Colors.transparent,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    onPressed: () {}),
              ),
            )
          ],
        ),
      ),
    );
  }
}
