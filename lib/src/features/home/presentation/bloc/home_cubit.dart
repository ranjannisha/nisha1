import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nisha1/src/core/errors/app_error.dart';
import 'package:nisha1/src/features/home/data/models/box_model.dart';
import 'package:nisha1/src/features/home/domain/usecase/home_usecase.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;

  HomeCubit(this._homeUseCase) : super(const HomeState());

  /// Validates input and loads boxes
  void validateAndLoadBoxes(String input) {
    final count = int.tryParse(input);
    if (count == null || count < 5 || count > 25) {
      emit(state.copyWith(errorMessage: "Enter a number between 5 and 25"));
      return;
    }

    emit(state.copyWith(errorMessage: null));
    loadBoxes(count);
  }

  /// Loads boxes from usecase
  Future<void> loadBoxes(int count) async {
    emit(state.copyWith(
      boxes: [],
      tapOrder: [],
      allGreen: false,
      isReversing: false,
      errorMessage: null,
    ));

    final Either<AppError, List<BoxModel>> result = await _homeUseCase.execute(count);

    result.fold(
          (error) => emit(state.copyWith(errorMessage: "Failed to load boxes")),
          (boxes) => emit(state.copyWith(boxes: boxes)),
    );
  }

  /// Toggle a single box green
  void toggleBox(int id) {
    if (state.isReversing) return;

    final index = state.boxes.indexWhere((b) => b.id == id);
    if (index == -1 || state.boxes[index].isActive) return;

    final updatedBoxes = [...state.boxes];
    updatedBoxes[index] = updatedBoxes[index].copyWith(isActive: true);

    final updatedTapOrder = [...state.tapOrder, id];
    final allGreen = updatedBoxes.every((b) => b.isActive);

    emit(state.copyWith(
      boxes: updatedBoxes,
      tapOrder: updatedTapOrder,
      allGreen: allGreen,
    ));

    if (allGreen) {
      _startReverseAnimation();
    }
  }

  /// Start reverse animation (green → red) one per second in reverse tap order
  Future<void> _startReverseAnimation() async {
    emit(state.copyWith(isReversing: true));

    final reversedOrder = [...state.tapOrder].reversed.toList();
    final boxes = [...state.boxes];

    for (final id in reversedOrder) {
      await Future.delayed(const Duration(seconds: 1));

      final index = boxes.indexWhere((b) => b.id == id);
      if (index != -1) {
        boxes[index] = boxes[index].copyWith(isActive: false);
        emit(state.copyWith(boxes: [...boxes]));
      }
    }

    emit(state.copyWith(
      tapOrder: [],
      allGreen: false,
      isReversing: false,
    ));
  }
}
