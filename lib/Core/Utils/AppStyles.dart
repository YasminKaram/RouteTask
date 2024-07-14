import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColors.dart';

class AppStyles{
  static TextStyle search = GoogleFonts.poppins(
      fontWeight: FontWeight.w300,
      fontSize: 14.sp,
      color: AppColors.secondary);
  static TextStyle productName = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
      color: AppColors.secondary);
}