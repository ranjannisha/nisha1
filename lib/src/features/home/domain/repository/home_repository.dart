import 'package:dartz/dartz.dart';
import 'package:nisha1/src/core/errors/app_error.dart';
import 'package:nisha1/src/features/home/data/models/box_model.dart';

abstract class HomeRepository {
  Future<Either<AppError, List<BoxModel>>> getBoxes(int count);
}
