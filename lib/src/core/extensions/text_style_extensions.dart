import 'package:nisha1/src/core/helpers/utility.dart';
import 'package:nisha1/src/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

extension TextStyleX on TextStyle {
  ///color attachment on text style
  TextStyle get primary => copyWith(color: AppColors.primaryColor);

  TextStyle get whiteColor => copyWith(color: AppColors.whiteColor);

  TextStyle get inputBorderColor => copyWith(color: AppColors.inputBorderColor);

  TextStyle get redColor => copyWith(color: AppColors.red);

  TextStyle get blueColor => copyWith(color: AppColors.blueColor);
  TextStyle get lightBlueColor => copyWith(color: AppColors.lightBlueColor);

  TextStyle get greyColor => copyWith(color: AppColors.greyColor);
  TextStyle get blackColor => copyWith(color: AppColors.blackColor);
  TextStyle get secondaryColor => copyWith(color: AppColors.secondaryColor);
  TextStyle get hintTextColor =>
      copyWith(color:const Color(0xFFA3A3A3));
  TextStyle get primaryGrey => copyWith(color: AppColors.primaryGrey);
  TextStyle get lightGreyColor => copyWith(color: AppColors.lightGreyColor);
  TextStyle get darkGreenColor => copyWith(color: AppColors.darkGreenColor);
  TextStyle get greyShadeColor => copyWith(color: AppColors.greyShadeColor);
  TextStyle get disabledColor => copyWith(color: AppColors.disabled);

  TextStyle get darkYellowColor => copyWith(color: AppColors.darkYellowColor);
  TextStyle get softMidGreyColor => copyWith(color: AppColors.softMidGrey);

  ///line-height

  TextStyle lineHeight(double value) => copyWith(height: value / fontSize!);

  TextStyle letterSpacing(double value) =>
      copyWith(letterSpacing: Utility.calculateLetterSpacing(value));
}
