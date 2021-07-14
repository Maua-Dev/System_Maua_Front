import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle appBarTitle = GoogleFonts.notoSans(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bodyBold = GoogleFonts.notoSans(
    color: AppColors.strongLetter,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle body = GoogleFonts.notoSans(
    color: AppColors.thinLetter,
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle lightBody = GoogleFonts.notoSans(
    color: AppColors.lightLetter,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
}
