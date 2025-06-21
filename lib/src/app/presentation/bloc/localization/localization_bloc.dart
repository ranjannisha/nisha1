import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:nisha1/src/core/di/injection.dart';
import 'package:nisha1/src/core/helpers/storage_helper.dart';

part 'localization_event.dart';

part 'localization_state.dart';

part 'localization_bloc.freezed.dart';

@injectable
class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc()
      : super(const LocalizationState(selectedLanguage: Locale('en'))) {
    on<LocalizationEvent>((event, emit) async {
      final _storageHelper = getIt<StorageHelper>();
      event.whenOrNull(onChanged: (selectedLanguage) {
        _storageHelper.setLanguage(language: selectedLanguage.languageCode);
        emit(state.copyWith(selectedLanguage: selectedLanguage));
      }, getLanguage: () async {
        final _storageHelper = getIt<StorageHelper>();
        final selectedLanguage = await _storageHelper.preferredLanguage;
        if (emit.isDone)
          emit(state.copyWith(selectedLanguage: Locale(selectedLanguage)));
      });
    });
  }
}