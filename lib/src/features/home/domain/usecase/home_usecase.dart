import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:nisha1/src/core/errors/app_error.dart';
import 'package:nisha1/src/core/usecase/base_use_case.dart';
import 'package:nisha1/src/features/home/data/models/box_model.dart';
import 'package:nisha1/src/features/home/domain/repository/home_repository.dart';

@lazySingleton
class HomeUseCase implements BaseUseCase<int, List<BoxModel>> {
  final HomeRepository _homeRepository;

  HomeUseCase(this._homeRepository);

  @override
  Future<Either<AppError, List<BoxModel>>> execute(int count) {
    return _homeRepository.getBoxes(count);
  }
}