import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();
  static var rememberMe = 'rememberMe';
  static var userName = 'username';
  static var rememberMeUserName = 'rememberMeUserName';
  static var nisha1 = 'nisha1';
  static var accessToken = 'accessToken';
  static var refreshToken = 'refreshToken';
  static const String errorDialog = 'errorDialog';
  static const String expiryTime = 'expiryTime';
  static const String loadingDialog = 'loadingDialog';
  static const String successDialog = 'successDialog';
  static var countryCode = 'countryCode';
  static var preferredLanguage = 'preferredLanguage';
  static String unAuthorized = 'unAuthorized';



  static String country(Locale locale) {
    if (locale == const Locale('en')) {
      return 'https://cdn.nexdigitalstudio.com/wink/country_code_en.json';
    } else {
      return 'https://cdn.nexdigitalstudio.com/wink/country_code_ar.json';
    }
  }
}
