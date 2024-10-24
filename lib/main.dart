import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/screens/screen2.dart';
import 'presentation/screens/screen_1.dart';

void main() {
  runApp(const UiTask());
}

class UiTask extends StatelessWidget {
  const UiTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        home: Screen2(),
      ),
    );
  }
}
