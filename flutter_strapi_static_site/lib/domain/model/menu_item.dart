
class MenuItem {

  final int id;
  final String title;
  final String description;
  final String url;
  final String type;

  MenuItem({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.type
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      type: json['type'] as String,
    );
  }
}