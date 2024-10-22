import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({super.key, required this.parameter});
  final String parameter;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.check,
        color: Colors.black,
      ),
      title: Text(
        parameter,
        style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
