part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<BoxModel> boxes,
    @Default([]) List<int> tapOrder,
    @Default(false) bool allGreen,
    @Default(false) bool isReversing,
    String? errorMessage,
  }) = _HomeState;
}
