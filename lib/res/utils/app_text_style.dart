import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle{
  static  TextStyle headerTextStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white
    );
  }
  static TextStyle monteseratStyle({required Color color}){
    return GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: color
    );
  }
  static TextStyle headingStyle(){
    return GoogleFonts.rubikMoonrocks(
      fontWeight: FontWeight.w800,
      fontSize: 25,
      letterSpacing: 2,
      color: Colors.white
    );
  }
  static TextStyle normalStyle(){
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      color: Colors.white,
        fontSize: 17,
      letterSpacing: 1
    );
  }
}