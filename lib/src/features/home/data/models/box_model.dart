class BoxModel {
  final int id;
  final bool isActive;

  BoxModel({required this.id, this.isActive = false});

  BoxModel copyWith({bool? isActive}) {
    return BoxModel(id: id, isActive: isActive ?? this.isActive);
  }
}
