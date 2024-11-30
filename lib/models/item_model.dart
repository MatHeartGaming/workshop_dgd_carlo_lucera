// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemModel {
  final String id;
  final String name;
  final String shortDescription;
  final double price;

  ItemModel(
      {required this.id,
      required this.name,
      required this.shortDescription,
      this.price = 0});

  @override
  bool operator ==(covariant ItemModel other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }

  ItemModel copyWith({
    String? id,
    String? name,
    String? shortDescription,
    double? price,
  }) {
    return ItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      shortDescription: shortDescription ?? this.shortDescription,
      price: price ?? this.price,
    );
  }
}
