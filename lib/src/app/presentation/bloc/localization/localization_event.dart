
part of 'localization_bloc.dart';

@freezed
class LocalizationEvent with _$LocalizationEvent {
  const factory LocalizationEvent.onChanged(
      {required Locale selectedLanguage}) = _OnChanged;
  const factory LocalizationEvent.getLanguage() = _GetLanguage;
}
