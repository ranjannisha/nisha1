import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nisha1/src/core/errors/app_error.dart';
import 'package:nisha1/src/core/errors/app_exception.dart';
import 'package:nisha1/src/core/internet/internet_info.dart';
import 'package:nisha1/src/features/home/data/data_source/home_remote_data_source.dart';
import 'package:nisha1/src/features/home/data/models/box_model.dart';
import 'package:nisha1/src/features/home/domain/repository/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImp implements HomeRepository {
  HomeRepositoryImp(this._homeRemoteSource, this._internetInfo);
  final HomeRemoteDataSource _homeRemoteSource;
  final InternetInfo _internetInfo;

  @override
  Future<Either<AppError, List<BoxModel>>> getBoxes(int count) async {
    if (await _internetInfo.isConnected) {
      try {
        final response =
        await _homeRemoteSource.generateBoxes(count);
        return right(response);
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }
}
