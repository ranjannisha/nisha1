import 'dart:async';
import 'package:nisha1/src/core/constants/app_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageHelper {
  const StorageHelper(this._storage);

  final FlutterSecureStorage _storage;
  FutureOr<bool> get hasAccessToken async {
    final token = await _storage.read(key: AppConstants.accessToken);
    return token != null && token.isNotEmpty;
  }

  FutureOr<bool> get isTokenExpired async {
    final expiryTime = await _storage.read(key: AppConstants.expiryTime);
    if (expiryTime == null || expiryTime.isEmpty) return true;
    final expiryDate = DateTime.parse(expiryTime);
    final currentDate = DateTime.now();
    return currentDate.isAfter(expiryDate);
  }

  FutureOr<String?> get getRememberMe async =>
      await _storage.read(key: AppConstants.rememberMe);

  Future<void> setRememberMeLogin(String value) async =>
      await _storage.write(key: AppConstants.rememberMe, value: value);

  FutureOr<String?> get getRememberMeUserName async =>
      await _storage.read(key: AppConstants.rememberMeUserName);

  Future<void> setRememberMeUserName(String value) async =>
      await _storage.write(key: AppConstants.rememberMeUserName, value: value);

  FutureOr<Option<String>> getToken() async {
    final token = await _storage.read(key: AppConstants.accessToken);
    return optionOf(token);
  }

  Future<String?> getRefreshToken() async {
    final refreshToken = await _storage.read(key: AppConstants.refreshToken);
    return refreshToken;
  }

  Future<void> setAccessToken({required String access}) async =>
      await Future.wait([
        _storage.write(key: AppConstants.accessToken, value: access),
      ]);


  Future<void> clearAll() async => _storage.deleteAll();

  Future<Map<String, String>> getAllValues() async => _storage.readAll();

  FutureOr<String?> get getUserName async =>
      await _storage.read(key: AppConstants.userName);

  FutureOr<String?> get getCurrentCountryCode async =>
      await _storage.read(key: AppConstants.countryCode);

  Future<void> setCurrentCountryCode(String? value) async =>
      await _storage.write(key: AppConstants.countryCode, value: value);

  Future<String> get preferredLanguage async {
    String? preferredLang =
    await _storage.read(key: AppConstants.preferredLanguage);
    return preferredLang ?? 'en';
  }

  Future<void> setLanguage({required String language}) async =>
      _storage.write(key: AppConstants.preferredLanguage, value: language);
}

