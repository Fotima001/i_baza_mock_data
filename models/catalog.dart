class CatalogModel {
  final int id;
  final String title;
  final String definition;
  final String? oldPrice;
  final String price;

  CatalogModel({
    required this.id,
    required this.title,
    required this.definition,
    this.oldPrice,
    required this.price,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CatalogModel &&
        other.id == id &&
        other.title == title &&
        other.definition == definition &&
        other.oldPrice == oldPrice &&
        other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
    title.hashCode ^
    definition.hashCode ^
    oldPrice.hashCode ^
    price.hashCode;
  }

  @override
  String toString() {
    return 'CatalogModel(id: $id, title: $title, definition: $definition, oldPrice: $oldPrice, price: $price)';
  }

  CatalogModel copyWith({
    int? id,
    String? title,
    String? definition,
    String? oldPrice,
    String? price,
  }) {
    return CatalogModel(
      id: id ?? this.id,
      title: title ?? this.title,
      definition: definition ?? this.definition,
      oldPrice: oldPrice ?? this.oldPrice,
      price: price ?? this.price,
    );
  }
}
