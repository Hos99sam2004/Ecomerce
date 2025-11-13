import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static  TextStyle text = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Color(0xFFA8A8A9),
  );

  static  TextStyle headline = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: Color(0xFF000000),
  );
  static  TextStyle headline2 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: Color(0xFF000000),
  );
  static  TextStyle headline3 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Color(0xFF000000),
  );
}

//   import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// TextStyle tStyle(double fs) {
//     return TextStyle(
//               fontSize: fs.sp,
//               color: Color(0xFFA8A8A9),
//             );
//   }
//   TextStyle hStyle(double fs) {
//     return TextStyle(
//               fontSize: fs.sp,
//               color: Color(0xFF000000),
//             );

//   }