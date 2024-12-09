import 'package:flutter/material.dart';
import 'package:healthcare_dashborad/utils/responsive_size.dart';

abstract class Fontstyle {
  static TextStyle mulish_boled28(context) {
    return TextStyle(
      color: const Color(0xFF2F2F2F),
      fontSize: responsive_size(context, fontsize: 28),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  static TextStyle mulish_semiboled16(context) {
    return TextStyle(
      color: const Color(0xFF6A6868),
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle mulish_boled16(context) {
    return TextStyle(
      color: const Color(0xFF808080),
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  static TextStyle mulish_semiboled12(context) {
    return TextStyle(
      color: Colors.black,
      fontSize: responsive_size(context, fontsize: 12),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle mulish_boled20(context) {
    return TextStyle(
      color: const Color(0xFF2F2F2F),
      fontSize: responsive_size(context, fontsize: 20),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  static TextStyle mulish_regular16(context) {
    return TextStyle(
      color: const Color(0xFF383838),
      fontSize: responsive_size(context, fontsize: 16),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle mulish_boled12(context) {
    return TextStyle(
      color: const Color(0xFF383838),
      fontSize: responsive_size(context, fontsize: 12),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  static TextStyle mulish_boled10(context) {
    return TextStyle(
      color: const Color(0xFFA1A1A1),
      fontSize: responsive_size(context, fontsize: 10),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  static TextStyle mulish_regular22(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 22),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle mulish_regular24(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 24),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle mulish_regular14(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 14),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle mulish_regular32(context) {
    return TextStyle(
      color: Colors.white,
      fontSize: responsive_size(context, fontsize: 32),
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }
}
