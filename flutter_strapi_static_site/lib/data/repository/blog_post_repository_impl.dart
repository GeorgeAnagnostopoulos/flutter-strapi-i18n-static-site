
import 'dart:convert';
import '../service/read_string_assets.dart';
import '../../domain/model/blog_post.dart';
import '../../domain/repository/blog_post_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'blog_post_repository_impl.g.dart';

@riverpod
class BlogPostRepositoryImpl extends _$BlogPostRepositoryImpl implements BlogPostRepository {

  final String collectionType = "api::blog.blog";

  @override
  Future<List<BlogPost>> build() async {

    try {
      var results = await ref.watch(readStringAssetsProvider.future);

      List<dynamic> entities = jsonDecode('{"data":[$results]}')['data'] as List<dynamic>;
      return Future.value(entities
          .where((e) => e['type'] == collectionType)
          .map((e) => BlogPost.fromJson(e as Map<String, dynamic>))
          .toList());
    } catch(e) {
      throw Exception(e);
    }
  }

}