

import '../../data/repository/blog_post_repository_impl.dart';
import '../model/blog_post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_blog_posts_list_use_case.dart';

part 'get_blog_posts_list_use_case_impl.g.dart';

@riverpod
class GetBlogPostsListUseCaseImpl extends _$GetBlogPostsListUseCaseImpl implements GetBlogPostsListUseCase {

  @override
  Future<List<BlogPost>?> build() async {
    final posts = ref.watch(blogPostRepositoryImplProvider);
    return posts.valueOrNull;
  }

}