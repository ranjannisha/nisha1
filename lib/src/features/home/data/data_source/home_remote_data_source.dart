import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:nisha1/src/core/helpers/storage_helper.dart';
import 'package:nisha1/src/features/home/data/models/box_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BoxModel>> generateBoxes(int count);

}

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteSourceImpl implements HomeRemoteDataSource {
  HomeRemoteSourceImpl(@Named('authenticated') Dio dio, this._storageHelper)
      : _dio = dio;

  final Dio _dio;
  final StorageHelper _storageHelper;

  @override
  Future<List<BoxModel>> generateBoxes(int count) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return List.generate(
      count,
          (index) => BoxModel(id: index, isActive: false),
    );
  }
}
