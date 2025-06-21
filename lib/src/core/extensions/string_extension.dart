extension StringX on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  bool get isPassword => RegExp(r'$').hasMatch(this);
  bool get isUserName => RegExp(r'$').hasMatch(this);

  bool get isEmail => RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  ).hasMatch(this);

  String reversed(bool reverse) {
    if (reverse) {
      return split('').reversed.join();
    } else {
      return this;
    }
  }
}

extension StringNullX on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullNotEmpty => this != null && this!.isNotEmpty;
}
