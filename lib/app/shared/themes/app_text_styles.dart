import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle titleH1 = GoogleFonts.notoSans(
    color: AppColors.generalLetter,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle titleH2 = GoogleFonts.notoSans(
      color: AppColors.generalLetter,
      fontSize: 18,
      fontWeight: FontWeight.bold);

  static final TextStyle cardH3 = GoogleFonts.notoSans(
    color: AppColors.generalLetter,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle bodyH4 = GoogleFonts.notoSans(
    color: AppColors.generalLetter,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle bodyBoldH4 = GoogleFonts.notoSans(
    color: AppColors.generalLetter,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
}
