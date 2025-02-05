class ServiceModel {

  ServiceModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.locale,
    required this.description,
  });

  final int id;
  final String name;
  final String slug;
  final String locale;
  final String description;

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        id: json['id'] as int,
        name: json['data']['name'] as String,
        slug: json['data']['slug'] as String,
        locale: json['data']['locale'] as String,
        description: json['data']['description'] as String,
      );

}
