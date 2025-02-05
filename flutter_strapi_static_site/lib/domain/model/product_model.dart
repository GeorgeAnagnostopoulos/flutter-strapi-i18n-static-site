class ProductModel {
  ProductModel({
    required this.id,
    required this.locale,
    required this.name,
    required this.slug,
    required this.description,
  });

  final int id;
  final String locale;
  final String name;
  final String slug;
  final String description;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    try {
      var data = json['data'];
      return ProductModel(
        id: json['id'] as int,
        locale: data['locale'] as String,
        name: data['name'] as String,
        slug: data['slug'] as String,
        description: data['description'] as String,
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  ProductModel copyWith({
    int? id,
    String? locale,
    String? name,
    String? slug,
    String? description,
  }) =>
      ProductModel(
        id: id ?? this.id,
        locale: locale ?? this.locale,
        name: name ?? this.name,
        slug: slug ?? this.name,
        description: description ?? this.description,
      );
}
