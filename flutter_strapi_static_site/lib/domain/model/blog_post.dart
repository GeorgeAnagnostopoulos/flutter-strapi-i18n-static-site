class BlogPost {
  final int id;
  final String title;
  final String slug;
  final String locale;
  final String subTitle;
  final String contents;

  BlogPost({
    required this.id,
    required this.title,
    required this.slug,
    required this.locale,
    required this.subTitle,
    required this.contents,
  });

  factory BlogPost.fromJson(Map<String, dynamic> json)
    => BlogPost(
      id: json['id'] as int,
      title: json['data']['title'] as String,
      slug: json['data']['slug'] as String,
      locale: json['data']['locale'] as String,
      subTitle: json['data']['subTitle'] as String,
      contents: json['data']['contents'] as String,
    );
}
