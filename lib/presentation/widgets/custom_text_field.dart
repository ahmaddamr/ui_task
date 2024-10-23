import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.fillColor});
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.w,
      height: 35.h,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: fillColor,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: 'Search here...',
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
